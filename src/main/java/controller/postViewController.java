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
<<<<<<< HEAD
//		request.getSession().setAttribute("postnum", request.getParameter("postnum"));
//		request.getSession().setAttribute("platformnum", request.getParameter("platformnum"));
		String platformnum = request.getParameter("platformnum");
		String postnum = request.getParameter("postnum");
=======
		int postnum = Integer.parseInt(request.getParameter("postnum"));
		request.getSession().setAttribute("postnum", request.getParameter("postnum"));
		request.getSession().setAttribute("platformnum", request.getParameter("platformnum"));
		String platformnum = request.getParameter("platformnum");
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
		PostDTO dto = PostService.getInstance().searchpostnum(postnum);
//		System.out.println(dto);
		
//		System.out.println(postnum);
//		System.out.println(platformnum);
<<<<<<< HEAD
//		System.out.println(request.getSession().getAttribute("platformnum"));
//		System.out.println(request.getSession().getAttribute("postnum"));
=======
		System.out.println(request.getSession().getAttribute("platformnum"));
		System.out.println(request.getSession().getAttribute("postnum"));
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
		ModelAndView view = new ModelAndView();
		view.addObject("post", dto);
		view.setRedirect(false); // forward 방식
        view.setPath("post.jsp"); // JSP 경로
        return view;
	}

}
