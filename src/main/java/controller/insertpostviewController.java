package controller;

import java.io.IOException;

import dto.UsersDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import view.ModelAndView;

public class insertpostviewController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView view = new ModelAndView();
		view.setRedirect(false);
		view.setPath("insertpost.jsp");
		return view;
	}

}
