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

public class DeletePostController implements Controller{

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        UsersDTO sessionUser = (UsersDTO) request.getSession().getAttribute("user");

        UsersDTO updatedUser = UserService.getInstance().selectUserById(sessionUser.getId());

        String platformNum = request.getParameter("platformNum");
        String postNum = request.getParameter("postNum");
        
        if (updatedUser != null) {
            request.getSession().setAttribute("user", updatedUser);
        } else {
            response.getWriter().write("<script>alert('사용자 정보를 불러올 수 없습니다. 다시 로그인해주세요.'); location.href='login.jsp';</script>");
            return null;
        }

        PostDTO postDTO = new PostDTO();
        
        postDTO.setPlatformNum(platformNum);
       
        postDTO.setPostNum(postNum);
        
        PostService.getInstance().deletePost(postDTO);
        
		List<PostDTO> postList = PostService.getInstance().getPostlist(postDTO);
    
        // ModelAndView 설정
        ModelAndView view = new ModelAndView();
        view.addObject("postList", postList);
        view.addObject("platformNum", platformNum);
        view.setPath("list_post.jsp"); // JSP 경로
        view.setRedirect(false);   // forward 방식
        return view;
	}

}
