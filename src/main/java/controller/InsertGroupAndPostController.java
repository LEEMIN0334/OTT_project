package controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

import dto.PostDTO;
import dto.UsersDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.PostService;
import service.UserService;
import view.ModelAndView;

public class InsertGroupAndPostController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String postdata = request.getParameter("postdata");
		String platformnum = request.getParameter("platformnum");
		String ottid = request.getParameter("ottid");
		String ottpassword = request.getParameter("ottpassword");
		String id = ((UsersDTO)request.getSession().getAttribute("user")).getId();
		
		System.out.println(id);
		
		int seconds = (int) ChronoUnit.SECONDS.between(LocalDateTime.of(1970, 1, 1, 0, 0, 0), LocalDateTime.now());
		seconds -= 1000000000;
		
		int postnum = seconds;// postnum은 
		String a = postnum + "";
		a += "";
		
		PostDTO dto = new PostDTO();
		
		dto.setPostnum(a);
		dto.setId(id);
		dto.setPlatformnum(platformnum);
		dto.setPostdata(postdata);
		dto.setOttid(ottid);
		dto.setOttpassword(ottpassword);
		try {
			int count = PostService.getInstance().insertGroup(dto);
			count = PostService.getInstance().insertPost(dto);
			count = PostService.getInstance().insertGroupMember(dto);
			ModelAndView view = new ModelAndView();
			view.setRedirect(false);
			view.setPath("insertpost.jsp");
			request.setAttribute("errorMessage", "게시글을 작성이 성공적으로 완료됬습니다.");
			return view;		
		} catch (Exception e) {
			ModelAndView view = new ModelAndView();
	        view.setRedirect(false); // Forward 처리
	        view.setPath("insertpost.jsp");
	        // 예외 메시지를 request에 저장
	        request.setAttribute("errorMessage", "이미 공유중인 OTT 계정입니다.");
	        return view;
		}
	}

}
