package member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import config.DB;
import oracle.jdbc.driver.DBConversion;

public class MemberDAO {

	public static MemberDAO instance;
	
	
	private MemberDAO() {}
	
	public static MemberDAO getInstance() {
		if(instance == null) 
			instance = new MemberDAO();
			
		return instance;
	}

	public boolean duplicateIdCheck(String id) {
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 boolean x = false;
		 
		 
		 try {
			StringBuffer query = new StringBuffer();
			query.append("select user_id from member where user_id = ? ");
			
			conn = DB.getConn();
			pstmt = conn.prepareStatement(query.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) x = true;
			
			return x;
			
			
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
			
		}finally {
			try {
				if (pstmt != null) {
					pstmt.close();
					pstmt = null;
				}
				if(conn != null) {
					conn.close();
					conn = null;
				}
			} catch (Exception e2) {
				throw new RuntimeException(e2.getMessage());
			}
		}
		
		
		
	}
}
	

