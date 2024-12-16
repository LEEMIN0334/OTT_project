package controller;

import java.io.IOException;

//import org.apache.ibatis.session.SqlSession;

//import config.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import mapper.UsersMapper;
import service.UserService;
import view.ModelAndView;

public class UserInfoDeleteController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
	    int result = UserService.getInstance().deleteUser(id);

	    ModelAndView view = new ModelAndView();

	    if (result > 0) {
	        request.getSession().removeAttribute("user");

	        view.setPath("./login.do");
	        view.setRedirect(true);
	    } else {
	        view.setPath("./mypage_view.do");
	        view.setRedirect(true);
	    }

	    return view;
		/*
		 * String id = request.getParameter("id");
		 * UserService.getInstance().deleteUser(id);
		 * 
		 * ModelAndView view = new ModelAndView(); try (SqlSession session =
		 * DBManager.getInstance().getSession()) { // Mapper 인터페이스 가져오기 UsersMapper
		 * mapper = session.getMapper(UsersMapper.class);
		 * 
		 * // 회원번호를 기준으로 삭제 int result = mapper.deleteUser(id);
		 * 
		 * if (result > 0) {
		 * response.getWriter().write("<script>alert('회원탈퇴가 완료되었습니다.');</script>");
		 * view.setPath("./login.do"); view.setRedirect(true); } else {
		 * response.getWriter().
		 * write("<script>alert('회원탈퇴에 실패했습니다. 관리자에게 문의하세요.');</script>");
		 * view.setPath("mypage_view.do"); view.setRedirect(true); } } catch (Exception
		 * e) { e.printStackTrace(); // 서버 로그 기록 response.getWriter().
		 * write("<script>alert('서버 오류가 발생했습니다. 관리자에게 문의하세요.');</script>");
		 * view.setPath("mypage_view.do"); view.setRedirect(true); } return view;
		 */
	}

}
