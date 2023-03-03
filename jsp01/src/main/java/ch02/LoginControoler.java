package ch02;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;


@WebServlet("/ch02_servlet/*")
public class LoginControoler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getRequestURI());
		System.out.println(request.getRequestURL()); //값만 출력해봄
		String uri = request.getRequestURI();
		
		//문자욜.indexOf("찾을내용") : 찾을내용(특정문자열)이 앞에서부터 처음 발견되면 인덱스를 반환해준다.
		// 만약 찾지 못하면 -1을 반환
		// 예) /jsp01/ch02_servlet/login.do 에서 맨 앞에서부터 20번째(인덱스) 문자열에 위치
		System.out.println(uri.indexOf("Login.do")); //값을 출력
		System.out.println(uri.indexOf("logout.do")); // -1 : 값이 없기 때문에 -1 반환
		
			if(uri.indexOf("Login.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			System.out.println(userid);//콘솔에서 확인
			System.out.println(passwd);
			MemberDAO dao = new MemberDAO();
			String name= dao.loginCheck(userid, passwd);//초그인 체크
			String message = "";
			String page = ""; //이동할 페이지 주소
			
			if(name == null) { //로그인 실패
				message = "아이디 또는 비밀번호가 일치하지 않습니다.";
				message =URLEncoder.encode(message,"utf-8");
				page="/ch02/sessionTestForm.jsp?message="+message;
			}else { // 로그인 성공
				message = name+"님 환영합니다.";
				
				HttpSession session = request.getSession(); // 서블릿에서는 세션객체 생성을 해줘야한다.
				session.setAttribute("userid", userid); //세션에 저장
				session.setAttribute("message", message);
				page="/ch02/session_success.jsp";
			}
			System.out.println(message);
			//디렉토리가 다르기 때문에 getContextPath를 써야함
			response.sendRedirect(request.getContextPath()+page);
			
			}else if (uri.indexOf("logout.do") != -1) {
			// 1. 세션변수에 저장된 값들을 제거
			HttpSession session = request.getSession();
			session.invalidate(); //세션초기화
			String message = URLEncoder.encode("로그아웃되었습니다.", "utf-8");
			response.sendRedirect(request.getContextPath()+"/ch02/sessionTestForm.jsp?message="+message);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
