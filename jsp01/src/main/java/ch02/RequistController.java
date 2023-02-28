package ch02;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequistController
 */
@WebServlet( "/ch02_servlet/request.do" )
public class RequistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String hobby = request.getParameter("hobby");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		Map<String, Object> map = new HashMap<String , Object>();
		map.put("name", name);
		map.put("email", email);
		map.put("tel", tel);
		map.put("age", age);
		gender = gender.equals("m") ? "남" : "여" ;
		map.put("gender", gender);
		map.put("hobby", hobby);
		System.out.println(map);
		request.setAttribute("map", map);
		String page="/ch02/request_result.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
