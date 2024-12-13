package controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.ibatis.session.SqlSession;

import config.DBManager;
import dto.UsersDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.UserMapper;
import service.UserService;
import view.ModelAndView;

public class UserInfoUpdateController implements Controller {

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
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		// 입력값 가져오기
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String account = request.getParameter("account");
		
		UserMapper mapper = DBManager.getInstance().getSession().getMapper(UserMapper.class);
        UsersDTO user = mapper.selectUserById(id); // 사용자 정보 조회

        if (user != null) {
            request.setAttribute("user", user); // JSP로 사용자 정보 전달
            request.getRequestDispatcher("mypage.jsp").forward(request, response);
        } else {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write("<script>alert('사용자 정보를 불러오는 데 실패했습니다.'); location.href='mypage.jsp';</script>");
        }

		// 입력값 검증
		if (name == null || name.isEmpty() || password == null || password.isEmpty() || birth == null || birth.isEmpty()
				|| email == null || email.isEmpty()) {
			response.getWriter().write("<script>alert('모든 필드를 채워주세요.'); location.href='mypage.jsp';</script>");
		}

		if (!password.equals(password2)) {
			response.getWriter().write("<script>alert('비밀번호가 일치하지 않습니다.'); location.href='mypage.jsp';</script>");
		}

		if (!email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
			response.getWriter().write("<script>alert('이메일 형식이 올바르지 않습니다.'); location.href='mypage.jsp';</script>");
		}
		
		if (!account.matches("\\d+")) {
	        response.getWriter().write("<script>alert('Account는 숫자만 입력할 수 있습니다.'); history.back();</script>");
	    }
		
		
		// 비밀번호 해싱
		String hashedPassword = hashPassword(password);

		// DTO 생성
		UsersDTO dto = new UsersDTO();
		dto.setId(id);
		dto.setName(name);
		dto.setPassword(hashedPassword);
		dto.setBirth(birth);
		dto.setEmail(email);
		dto.setAccount(account);

		// 서비스 호출
		int count = UserService.getInstance().updateUserInfo(dto);

		ModelAndView view = new ModelAndView();
		if (count > 0) {
			response.getWriter().write("<script>alert('프로필이 성공적으로 수정되었습니다.'); location.href='mypage.jsp';</script>");
			view.setPath("mypage.jsp");
            view.setRedirect(true);
		} else {
			response.getWriter().write("<script>alert('프로필 업데이트에 실패했습니다.'); location.href='mypage.jsp';</script>");
			view.setPath("mypage.jsp");
            view.setRedirect(false);
		}

		return view;
	}

}
