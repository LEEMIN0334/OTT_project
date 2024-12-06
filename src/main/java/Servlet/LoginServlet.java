package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        if (id == null || id.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            memberInfoMapper mapper = DBManager.getInstance().getSession().getMapper(memberInfoMapper.class);
            UsersDTO user = mapper.selectUserById(id);

            if (user == null) {
                response.sendRedirect("login.jsp?error=invalid_password");
                return;
            }

            String hashedPassword = hashPassword(password);

            if (!user.getPassword().equalsIgnoreCase(hashedPassword)) {
                response.sendRedirect("login.jsp?error=invalid_password");
                return;
            }

            request.getSession().setAttribute("user", user);
            response.sendRedirect("mainpage.html");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=server_error");
        }
    }
}
