package controller;

import java.io.IOException;

import dto.UsersDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.OttService;
import view.ModelAndView;

public class LoginController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		UsersDTO dto = OttService.getInstance().login(id, password);
		
		ModelAndView view = new ModelAndView();
		if(dto != null) {
			request.getSession().setAttribute("user", dto);
			view.setPath("./Main.do");	
			view.setRedirect(true);
		}else {
			view.setPath("login.jsp");
		}
		return view;
	}

}
