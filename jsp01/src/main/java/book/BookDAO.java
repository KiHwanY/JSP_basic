package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import config.DB;

public class BookDAO {
	public ArrayList<BookDTO> bookList(){
		ArrayList<BookDTO> items = new ArrayList<>();
		Connection conn=null; //DB연결 객체
		PreparedStatement pstmt=null; //sql처리 객체
		ResultSet rs =null; //**중요 : select문의 결과행 처리 객체
		try {
			conn=DB.getConn();//DB커넥션 리턴
			String sql = "select * from book";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery(); //sql실행
			while (rs.next()) {//다음 레코드가 존재하면 true
				BookDTO dto= new BookDTO();
				dto.setId(rs.getInt("id")); // rs.get자료형("필드명")
				dto.setTitle(rs.getString("title"));
				dto.setAuthor(rs.getNString("author"));
				dto.setPrice(rs.getInt("price"));
				dto.setQty(rs.getInt("qty"));
				items.add(dto);// 리스트에 dto추가
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try { //객체는 역순으로 닫음
				if(rs !=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		
		try {
			if(conn != null) conn.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
		return items;
	}
	
}

