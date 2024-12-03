package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.memberInfoMapper;

import java.io.IOException;

import config.DBManager;
import dto.UsersDTO;

@WebServlet("/register.do")
public class MemberInsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MemberInsertServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String birth = request.getParameter("birth");
        String email = request.getParameter("email");

        UsersDTO dto = new UsersDTO();
        dto.setId(id);
        dto.setPassword(password);
        dto.setBirth(birth);
        dto.setName(name);
        dto.setEmail(email);

        memberInfoMapper mapper = DBManager.getInstance().getSession().getMapper(memberInfoMapper.class);

        int count = mapper.insertMember(dto);
        System.out.println("데이터 등록 결과 : " + count);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

