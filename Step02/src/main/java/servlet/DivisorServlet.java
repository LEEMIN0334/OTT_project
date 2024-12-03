package servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/DivisorServlet")
public class DivisorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String numberStr = request.getParameter("number");
        int number = 0;
        List<Integer> divisors = new ArrayList<>();

        try {
            number = Integer.parseInt(numberStr);
            if (number <= 0) {
                throw new NumberFormatException("양의 정수를 입력해야 합니다.");
            }
            for (int i = 1; i <= number; i++) {
                if (number % i == 0) {
                    divisors.add(i);
                }
            }
            // 데이터 request 영역에 저장
            request.setAttribute("number", number);
            request.setAttribute("divisors", divisors);
        } catch (NumberFormatException e) {
            // 유효하지 않은 입력 처리
            request.setAttribute("errorMessage", "올바른 양의 정수를 입력해주세요.");
        }

        // 결과 JSP 페이지로 포워딩
        RequestDispatcher dispatcher = request.getRequestDispatcher("q1_divisor_result.jsp");
        dispatcher.forward(request, response);
    }
}