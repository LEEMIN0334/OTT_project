package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.BoardMamberMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import config.DBManager;
import dto.BoardMemberDTO;
import dto.MajorDTO;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/register.do")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		
		BoardMemberDTO dto = new BoardMemberDTO();
		dto.setId(id); dto.setNickName(nickname);
		dto.setPassword(password); dto.setUserName(name);
		
		BoardMamberMapper mapper = DBManager.getInstance().getSession()
				.getMapper(BoardMamberMapper.class);
		
		int count = mapper.insertMember(dto);
		System.out.println("데이터 등록 결과 : " + count);
		response.sendRedirect("all.do");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
