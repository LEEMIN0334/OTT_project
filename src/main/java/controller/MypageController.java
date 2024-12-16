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
        // 세션에서 사용자 정보 가져오기
        UsersDTO sessionUser = (UsersDTO) request.getSession().getAttribute("user");

        // 세션이 없으면 로그인 페이지로 리다이렉트
        if (sessionUser == null) {
            response.sendRedirect("loginView.do");
            return null;
        }

        // 사용자 정보 업데이트
        UsersDTO updatedUser = UserService.getInstance().selectUserById(sessionUser.getId());

        if (updatedUser != null) {
            // 세션 갱신
            request.getSession().setAttribute("user", updatedUser);
        } else {
            // 사용자 정보가 없을 경우 처리
            request.getSession().invalidate(); // 세션 무효화
            response.getWriter().write("<script>alert('사용자 정보를 불러올 수 없습니다. 다시 로그인해주세요.'); location.href='login.jsp';</script>");
            return null;
        }

        // Forward to the mypage.jsp view
        ModelAndView view = new ModelAndView();
        view.setPath("mypage.jsp"); // 마이페이지로 이동
        view.setRedirect(false); // Forwarding to JSP
        return view;
    }
}
