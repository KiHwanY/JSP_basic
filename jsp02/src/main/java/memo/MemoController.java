package memo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import memo.dao.MemoDAO;
import memo.dto.MemoDTO;


@WebServlet("/memo_servlet/*") //공통uri
public class MemoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//사용자가 요청한 주소
		String uri=request.getRequestURI();
		MemoDAO dao=new MemoDAO();
		if(uri.indexOf("list.do") != -1) { //세부uri
			//검색옵션 + 검색키워드
			String searchkey = request.getParameter("searchkey");
			String search= request.getParameter("search");
			
			List<MemoDTO> list=dao.listMemo(searchkey,search);//메모 목록 리턴
			//request 영역에 저장
			request.setAttribute("list", list);
			//포워딩
			String page="/memo/memo_list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("insert.do") != -1) {
			String writer = request.getParameter("wirter");
			String memo = request.getParameter("memo");
			MemoDTO dto = new MemoDTO();
			dto.setWriter(writer);
			dto.setMemo(memo);
			
			//DAO에 레코드 저장요청
			dao.insertMemo(dto);
			
		}else if(uri.indexOf("view.do") != -1) {
			int idx= Integer.parseInt(request.getParameter("idx"));
			System.out.println("글번호:"+idx);
			MemoDTO dto = dao.viewMemo(idx);
			//request 영역에 저장
			request.setAttribute("dto", dto);
			String page = "/memo/memo_view.jsp";
			//포워딩
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("update.do") != -1) {
			//글번호 hidden으로 넘어온 idx 처리
			int idx = Integer.parseInt(request.getParameter("idx"));
			String writer = request.getParameter("writer");
			String memo = request.getParameter("memo");
			MemoDTO dto = new MemoDTO();
			dto.setIdx(idx);
			dto.setWriter(writer);
			dto.setMemo(memo);
			dao.updateMemo(dto); //레코드 수정
			//단순 페이지 이동
			response.sendRedirect(request.getContextPath()+"/memo/memo.jsp");
				
		}else if(uri.indexOf("delete.do") != -1) {
			int idx = Integer.parseInt(request.getParameter("idx"));
			dao.deleteMemo(idx);
			
			response.sendRedirect(request.getContextPath()+"/memo/memo.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
