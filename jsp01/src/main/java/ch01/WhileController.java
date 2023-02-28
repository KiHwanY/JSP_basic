package ch01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *  MVC pattern(모델2방식) - M(Model) - 데이터처리(DAO,DTO), V(View) - 화면출력(jsp), C(Controller) - 프로그램의 흐름 제어(서블릿)
 *	서블릿 - 서버에서 실행되는 자바프로그램
 *	HttpServletRequest - 서버에 대한 요청 처리
 *	HttpServletResponse - 클라이언트에 대한 응답 처리
 *	@WebServlet("/WhileController") : 최신기법으로서 어노테이션기법, web.xml 처리가 전통적 매핑
 */
@WebServlet("/WhileController")
public class WhileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int number = Integer.parseInt(request.getParameter("number"));
		int num =Integer.parseInt(request.getParameter("num"));
		int result = 1;
		for(int i=1; i<=num; i++) {
			result *= number;
		}
		System.out.println("결과 :"+ result); //콘솔에 출력
		// 결과값을 웹 영역에 저장 setAttribute("변수명", 값)
		request.setAttribute("result", result); //웹 영역에 저장(Object 타입으로 저장)
		RequestDispatcher rd = request.getRequestDispatcher("/ch01/while_result.jsp");
		rd.forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response); // doGet을 호출해서 값을 클라이언트에 보내줌
	}

}
