package controller;

import java.io.IOException;

import dto.UsersDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.UserService;
import view.ModelAndView;

public class MypageController implements Controller {

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

        // Forward to the mypage.jsp view
        ModelAndView view = new ModelAndView();
        view.setPath("mypage.jsp");
        view.setRedirect(false); // Forwarding to JSP
        return view;
    }
}
