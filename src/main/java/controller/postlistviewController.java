package controller;

import java.io.IOException;
import java.util.List;

import dto.PostDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.PostService;
import view.ModelAndView;

public class postlistviewController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<PostDTO> list = PostService.getInstance().getPostList();
		ModelAndView view = new ModelAndView();
		view.addObject("postList", list);
		view.setPath("postlist.jsp");
		return view;
	}

}
