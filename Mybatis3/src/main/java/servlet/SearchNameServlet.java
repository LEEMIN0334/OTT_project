package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.BoardMemberService;

import java.io.IOException;
import java.util.List;

import dto.BoardMemberDTO;

/**
 * Servlet implementation class SearchNameServlet
 */
@WebServlet("/searchName.do")
public class SearchNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchNameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 클라이언트가 보낸 데이터 받음
		String name = request.getParameter("search");
		//2. 서비스 클래스로 데이터 보내고 결과를 받음
		List<BoardMemberDTO> list = 
				BoardMemberService.getInstance().selectNameMember(name);
		//3. 데이터 셋팅
		request.setAttribute("list", list);
		//4. 페이지 이동
		request.getRequestDispatcher("member_list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
