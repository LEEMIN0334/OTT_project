package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.MajorMapper;
import mapper.UsersMapper;

import java.io.IOException;
import java.util.List;

import config.DBManager;
import dto.MajorDTO;
import dto.UsersDTO;

/**
 * Servlet implementation class SellctAllMajorServlet
 */
@WebServlet("/allUsers.do")
public class SellctAllMajorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellctAllMajorServlet() {
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UsersMapper mapper = DBManager.getInstance().getSession().getMapper(UsersMapper.class);
    	List<UsersDTO> list = mapper.selectAllUsers();
    	request.setAttribute("usersList",list);
    	request.getRequestDispatcher("./Users_List.jsp")
    	.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
