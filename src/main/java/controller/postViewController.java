package controller;

import java.io.IOException;
import java.util.List;

import dto.PostDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.PostService;
import view.ModelAndView;

public class postViewController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String platformnum = request.getParameter("platformnum");
		String postnum = request.getParameter("postnum");

		PostDTO dto = PostService.getInstance().searchpostnum(postnum);

		ModelAndView view = new ModelAndView();
		view.addObject("post", dto);
		view.setRedirect(false); // forward 방식
        view.setPath("post.jsp"); // JSP 경로
        return view;
	}

}
