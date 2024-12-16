package controller;

import dao.UsersDAO;
import dto.UsersDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import view.ModelAndView;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MemberInsertController implements Controller {

    @Override
    public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String birth = request.getParameter("birth");
        String account = request.getParameter("account");

        ModelAndView view = new ModelAndView();

        // 비밀번호 확인 로직
        if (!password.equals(confirmPassword)) {
            request.setAttribute("error", "password_mismatch");
            view.setPath("member_insert_view.jsp");
            return view;
        }

        // 비밀번호 암호화
        String hashedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            md.update(password.getBytes());
            byte[] bytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bytes) {
                sb.append(String.format("%02x", b));
            }
            hashedPassword = sb.toString().toUpperCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            request.setAttribute("error", "encryption_failed");
            view.setPath("member_insert_view.jsp");
            return view;
        }

        // 사용자 정보 저장
        UsersDTO user = new UsersDTO(id, name, email, birth, hashedPassword, account);

        UsersDAO dao = new UsersDAO();

        // 중복 아이디 확인
        if (dao.selectUserById(id) != null) {
            request.setAttribute("error", "duplicate_id");
            view.setPath("member_insert_view.jsp");
            return view;
        }

        // DB에 저장
        int result = dao.insertUser(user);

        if (result > 0) {
            view.setPath("loginView.do"); // 회원가입 성공 시 로그인 페이지로 이동
            view.setRedirect(true);
        } else {
            request.setAttribute("error", "insert_failed");
            view.setPath("member_insert_view.jsp");
        }

        return view;
    }
}
