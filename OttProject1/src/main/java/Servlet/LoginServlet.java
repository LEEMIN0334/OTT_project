package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.azul.crs.client.Response;

import config.DBManager;
import dto.UsersDTO;
import mapper.memberInfoMapper;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            byte[] hashedBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("비밀번호 해싱 실패", e);
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String id = request.getParameter("id");
        String password = request.getParameter("password");

        if (id == null || id.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            response.sendRedirect("login.html?error=invalid_input");
            return;
        }
        try {
            memberInfoMapper mapper = DBManager.getInstance().getSession().getMapper(memberInfoMapper.class);
            UsersDTO user = mapper.selectUserById(id);

            if (user == null) {
                response.sendRedirect("login.jsp?error=user_not_found");
                System.out.println(id + password + 4);
                return;
            }
            String hashedPassword = hashPassword(password);
            if (user.getPassword().equals(hashedPassword)) {
                session.setAttribute("user", user);
                response.sendRedirect("login_result.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalid_password");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.html?error=server_error");
        }
    }
}
