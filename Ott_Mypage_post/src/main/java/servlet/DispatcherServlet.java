package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import view.ModelAndView;

import java.io.IOException;

import java.util.Arrays;
import java.util.Iterator;

import controller.Controller;
import controller.HandlerMapping;

/**
 * Servlet implementation class DispatcherServlet
 */
//모든 WebServlet 주소 받으려면 * / *.do = .do가 포함된애만 
@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String rootPath = "/WEB-INF/views/";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispatcherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] path = request.getRequestURI().split("/");
		String command = path[path.length-1].replace(".do","");
		//Controller 생성 
		Controller controller = HandlerMapping.getInstance().createController(command);
		//execute 
		ModelAndView view = null;
		if(controller != null) {
			view = controller.execute(request, response);
		}
		if(view != null) {
		//데이터 request 영역에 저장 
		Iterator<String> it = view.getModel().keySet().iterator();
		while(it.hasNext()) {
			String key = it.next();
			request.setAttribute(key, view.getModel().get(key));
		}
		//페이지 이동처리
		if(view.isRedirect())
			response.sendRedirect(view.getPath());
		else
			request.getRequestDispatcher(rootPath + view.getPath()).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
