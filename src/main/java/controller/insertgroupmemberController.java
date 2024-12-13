package controller;

import java.io.IOException;

import dto.PostDTO;
import dto.UsersDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.PostService;
import view.ModelAndView;

public class insertgroupmemberController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = ((UsersDTO)request.getSession().getAttribute("user")).getId();
		int postnum = (int)request.getSession().getAttribute("postnum");
		String platformnum = (String)request.getSession().getAttribute("platformnum");
		System.out.println(id);
		System.out.println(postnum);
		System.out.println(platformnum);
				
		PostDTO dto = new PostDTO();
		dto.setId(id);
		dto.setPlatformnum(platformnum);
		dto.setPostnum(postnum);
		
		PostService.getInstance().insertGroupMember(dto);
		
		
		ModelAndView view = new ModelAndView();
		view.setPath("postlist.jsp");
		view.setRedirect(false);
		return view;
	}

}
