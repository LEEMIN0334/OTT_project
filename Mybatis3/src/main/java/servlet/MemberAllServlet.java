package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.BoardMamberMapper;

import java.io.IOException;
import java.util.List;

import config.DBManager;
import dto.BoardMemberDTO;

/**
 * Servlet implementation class MemberAllServlet
 */
@WebServlet("/all.do")
public class MemberAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAllServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		BoardMamberMapper mapper = DBManager().getInstance().getSession().getMapper(BoardMemberMapper.class);
		BoardMamberMapper mapper = DBManager.getInstance().getSession()
				.getMapper(BoardMamberMapper.class);
		List<BoardMemberDTO> list = mapper.selectAllMember();
		System.out.println(list);
		request.setAttribute("list", list);
		request.getRequestDispatcher("member_list.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
