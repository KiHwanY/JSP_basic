package ch03;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/ForwardController")
public class ForwardController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			//한글 인코딩 설정
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String color = request.getParameter("color");
			String[] hobby = request.getParameterValues("hobby");
			String message = "";
			
			switch (color) {
			case "blue": message="자기탐구화 내적성장을 상징";break;
			case "green": message="기분의 안정과 온화함을 상징";break;
			case "red": message="생명을 상징";break;
			default:
				break;
			}
			message += "하는 색입니다.";
			
			
			Map<String, Object> map = new HashMap<>();
			//맴에 자료 저장
			map.put("name", name);
			map.put("color", color);
			map.put("message", message);
			map.put("hobby", hobby);
			
			//request 영역에 저장
			request.setAttribute("map", map);
			
			//View 단에 보내기 : forward 방식(주소 고정)
			RequestDispatcher rd = request.getRequestDispatcher("/ch03/color.jsp");
			rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
