package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import view.ModelAndView;

import java.io.IOException;

public class MemberInsertViewController implements Controller {

    @Override
    public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView view = new ModelAndView();
        view.setPath("member_insert_view.jsp"); // 회원가입 페이지로 이동
        view.setRedirect(false); // forward 방식
        return view;
    }
}
