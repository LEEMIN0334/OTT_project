package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import view.ModelAndView;

public class MainController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView view = new ModelAndView();
		 view.setRedirect(false); // 포워드 방식으로 처리
	        view.setPath("main.jsp"); // 경로 설정
		return view;
	}

}
