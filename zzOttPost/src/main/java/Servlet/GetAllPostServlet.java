package Servlet;

import java.io.IOException;
import java.util.List;

import org.apache.tomcat.jakartaee.commons.lang3.ObjectUtils;
import org.apache.tomcat.jakartaee.commons.lang3.StringUtils;

import config.DBManager;
import dto.PostDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.PostMapper;


@WebServlet("/GetAllPostServlet")
public class GetAllPostServlet extends HttpServlet {

    public GetAllPostServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	PostDTO dto = new PostDTO();
    	
    	if(ObjectUtils.isNotEmpty(request) ) {
        	
        	String title = request.getParameter("title");
            String content = request.getParameter("content");
            String totalMembers = request.getParameter("totalMembers");
            
            dto.setTitle(title);
            dto.setContent(content);
            dto.setTotalMembers(totalMembers);  		
    		
    	}


        PostMapper mapper = DBManager.getInstance().getSession().getMapper(PostMapper.class);

       
        List<PostDTO> postList = mapper.getAllPosts(dto);
		
        request.setAttribute("postList", postList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list_post.jsp");
        dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}
}