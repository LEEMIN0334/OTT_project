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

import config.DBManager;
import dto.UsersDTO;
import mapper.memberInfoMapper;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

public LoginServlet() {
    super();
}

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

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();

    // 사용자가 입력한 아이디와 비밀번호
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    // 입력값 검증
    if (id == null || id.trim().isEmpty() || password == null || password.trim().isEmpty()) {
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("<script>alert('아이디와 비밀번호를 입력해주세요.'); location.href='login.jsp';</script>");
        return;
    }

    try {
        // DBManager에서 MyBatis 매퍼 가져오기
        memberInfoMapper mapper = DBManager.getInstance().getSession().getMapper(memberInfoMapper.class);

        // 사용자 정보 조회
        UsersDTO user = mapper.selectUserById(id);

        if (user == null) {
            // 아이디가 존재하지 않음
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("<script>alert('존재하지 않는 아이디입니다.'); location.href='login.jsp';</script>");
            return;
        }

        // 비밀번호 비교
        String hashedPassword = hashPassword(password);
        if (user.getPassword().toLowerCase().equals(hashedPassword)) {
            // 로그인 성공
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(30 * 60); // 세션 타임아웃 설정
            response.sendRedirect("login_result.jsp");
        } else {
            // 비밀번호 불일치
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("<script>alert('비밀번호가 틀렸습니다.'); location.href='login.jsp';</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("<script>alert('서버 오류가 발생했습니다. 관리자에게 문의하세요.'); location.href='login.jsp';</script>");
    	}
	}
}