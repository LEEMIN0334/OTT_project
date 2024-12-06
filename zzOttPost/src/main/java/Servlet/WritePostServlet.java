package Servlet;

import java.io.IOException;
import java.util.List;

import config.DBManager;
import dto.PostDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.PostMapper;


@WebServlet("/WritePostServlet")
public class WritePostServlet extends HttpServlet {

    public WritePostServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String totalMembers = request.getParameter("totalMembers");


        PostDTO dto = new PostDTO();
        dto.setTitle(title);
        dto.setContent(content);
        dto.setTotalMembers(totalMembers);

        PostMapper mapper = DBManager.getInstance().getSession().getMapper(PostMapper.class);

        int count = mapper.insertPost(dto);
        System.out.println("데이터 등록 결과 : " + count);
        List<PostDTO> postList = mapper.getAllPosts(dto);
		
        request.setAttribute("postList", postList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/GetAllPostServlet");
        dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}
}