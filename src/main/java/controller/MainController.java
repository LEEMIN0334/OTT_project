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
<<<<<<< HEAD
	        view.setPath("main.jsp"); // 경로 설정
=======
	        view.setPath("ottMain.jsp"); // 경로 설정
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
		return view;
	}

}
