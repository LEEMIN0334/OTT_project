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

@WebServlet("/register.do")
public class MemberInsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 사용자 입력 값 받기
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String birth = request.getParameter("birth");

        // 비밀번호 확인
        if (!password.equals(confirmPassword)) {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>");
            return;
        }

        // DTO 객체 생성
        UsersDTO dto = new UsersDTO();
        dto.setId(id);
        dto.setPassword(hashPassword(password)); // 비밀번호 해싱
        dto.setName(name);
        dto.setEmail(email);
        dto.setBirth(birth);

        // DB 삽입 처리
        try {
            memberInfoMapper mapper = DBManager.getInstance().getSession().getMapper(memberInfoMapper.class);
            int result = mapper.insertMember(dto);

            if (result > 0) {
                response.sendRedirect("register_success.html");
            } else {
                response.setContentType("text/html;charset=UTF-8");
                response.getWriter().write("<script>alert('회원가입에 실패했습니다.'); history.back();</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("<script>alert('서버 오류가 발생했습니다.'); history.back();</script>");
        }
    }

    // 비밀번호 해싱 메서드
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
}
