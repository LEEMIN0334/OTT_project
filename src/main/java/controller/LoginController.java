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
<<<<<<< HEAD
			System.out.println(((UsersDTO)request.getSession().getAttribute("user")).getId());
			view.setPath("./Main.do");	
=======
			view.setPath("./ottMain.do");	
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
			view.setRedirect(true);
		}else {
			view.setPath("login.jsp");
		}
		return view;
	}
<<<<<<< HEAD

=======
	
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
}
