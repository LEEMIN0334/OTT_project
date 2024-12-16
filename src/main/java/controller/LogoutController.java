package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import view.ModelAndView;

import java.io.IOException;

public class LogoutController implements Controller {

    @Override
    public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 세션 무효화
        request.getSession().invalidate();

        // 로그인 페이지로 리다이렉트
        ModelAndView view = new ModelAndView();
        view.setPath("loginView.do");
        view.setRedirect(true); // 리다이렉트 방식
        return view;
    }
}
