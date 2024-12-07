package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mapper.grouptableMapper;

import java.io.IOException;
import java.time.Instant;

import config.DBManager;
import dto.GroupTableDTO;

/**
 * Servlet implementation class InsertGroupAndPay
 */
@WebServlet("/insertGroup.do")
public class InsertGroupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertGroupServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);

//		int currentTimeInSeconds = (int) (System.currentTimeMillis() / 1000);
		String gno = Long.toString(Instant.now().getEpochSecond());
		String groupname = request.getParameter("groupname");
		String ottservice = request.getParameter("ottservice");
		String paynum = request.getParameter("paynum");
		String ottaccount = request.getParameter("ottaccount");
		
		
		GroupTableDTO dto = new GroupTableDTO();
		dto.setGno(gno);
		dto.setGroupname(groupname);
		dto.setottservice(ottservice);
		dto.setPaynum(paynum);
		dto.setOttaccount(ottaccount);
		
		grouptableMapper mapper = DBManager.getInstance()
				.getSession().getMapper(grouptableMapper.class);
		
		try {
		    int count = mapper.insertGroupTable(dto);
		    if (count > 0) {
		        System.out.println("데이터 삽입 성공");
		    } else {
		        System.out.println("데이터 삽입 실패");
		    }
		} catch (Exception e) {
		    e.printStackTrace(); // 에러 메시지를 출력하여 문제를 파악
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

}



















