package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.MajorMapper;

import java.io.IOException;
import java.util.List;

import config.DBManager;
import dto.MajorDTO;

/**
 * Servlet implementation class SellctAllMajorServlet
 */
@WebServlet("/allMajor.do")
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
		MajorMapper mapper = DBManager.getInstance().getSession()
    			.getMapper(MajorMapper.class);
    	List<MajorDTO> list = mapper.selectAllMajor();
    	request.setAttribute("majorList",list);
    	request.getRequestDispatcher("./major_list.jsp")
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
