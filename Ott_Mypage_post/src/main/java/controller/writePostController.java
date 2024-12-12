package controller;

import java.io.IOException;
import java.util.List;


import dto.PostDTO;
import dto.UsersDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import service.PostService;
import service.UserService;
import view.ModelAndView;

public class writePostController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        UsersDTO sessionUser = (UsersDTO) request.getSession().getAttribute("user");

        UsersDTO updatedUser = UserService.getInstance().selectUserById(sessionUser.getId());
        
        if (updatedUser != null) {
            request.getSession().setAttribute("user", updatedUser);
        } else {
            response.getWriter().write("<script>alert('사용자 정보를 불러올 수 없습니다. 다시 로그인해주세요.'); location.href='login.jsp';</script>");
            return null;
        }
        
        PostDTO postDto=new PostDTO();
        
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String platformNum = request.getParameter("platformNum");
		
		
		 postDto.setId(updatedUser.getId());
		 postDto.setTitle(title);
		 postDto.setContent(content);
		 postDto.setPlatformNum(platformNum);

        int postItem = PostService.getInstance().insertPost(postDto);
        
        System.out.println("성공여부 -> "+postItem);
        
        // ModelAndView 설정
        ModelAndView view = new ModelAndView();
        
		view.setPath("./list_post.do");	
		view.setRedirect(true);
        return view;
	}

}
