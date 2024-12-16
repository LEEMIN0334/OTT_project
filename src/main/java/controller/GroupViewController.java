package controller;

import java.io.IOException;

import dto.GroupMemberDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.GroupMemberService;
import view.ModelAndView;

public class GroupViewController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String gno = request.getParameter("id");
		String platformNum = request.getParameter("platformNum");

		GroupMemberDTO groupInfo = GroupMemberService.getInstance().getGroupMemberInfo(id, gno, platformNum);

		 // JSP로 그룹 정보를 전달
        request.setAttribute("groupInfo", groupInfo);

        // ModelAndView 설정
        ModelAndView view = new ModelAndView();
        view.setPath("mypage.jsp"); // JSP 경로
        view.setRedirect(false);   // forward 방식
        return view;
	}

}
