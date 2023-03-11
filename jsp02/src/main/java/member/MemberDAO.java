package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.DB;
import crypt.BCrypt;
import crypt.SHA256;

public class MemberDAO {
	public List<MemberDTO> memberList(){
		List<MemberDTO> items = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DB.getConn();
			String sql = "select * from member order by name";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();//select문일 때 실행메소드
			while (rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setUserid(rs.getString("userid"));
				dto.setPasswd(rs.getString("passwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setHp(rs.getString("hp"));
				dto.setJoin_date(rs.getDate("join_date"));
				dto.setZipcode(rs.getString("zipcode"));
				dto.setAddress1(rs.getString("address1"));
				dto.setAddress2(rs.getString("address2"));
				items.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt!=null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return items;
	}
	
	public void insert(MemberDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet은 select할때문 필요한 객체
		try {
			conn = DB.getConn();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into member ");
			sql.append("(userid,passwd,name,email,hp) values ");
			sql.append("(?,?,?,?,?)");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getUserid());//1번은 첫번째 ?를 의미
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getHp());
	
			pstmt.executeUpdate();//insert,update,delete일 때 사용하는 메소드
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
	}// end insert
	
	public MemberDTO memberDetail(String userid) {
		MemberDTO dto = new MemberDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DB.getConn();
			String sql = "select * from member where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto= new MemberDTO();
				dto.setUserid(userid);
				dto.setPasswd(rs.getString("passwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setHp(rs.getString("hp"));
				dto.setJoin_date(rs.getDate("join_date"));
				dto.setZipcode(rs.getString("zipcode"));
				dto.setAddress1(rs.getString("address1"));
				dto.setAddress2(rs.getString("address2"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
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
		return dto;
	}

	public void update(MemberDTO dto) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = DB.getConn();
				
				StringBuilder sb = new StringBuilder();
				sb.append("update member set");
				sb.append(" passwd=?, name=?, email=?, hp=?, zipcode=?, address1=?,address2=? ");
				sb.append(" where userid=?");
				
				// 스트링빌더는 toString 까지 해줘야함
				pstmt = conn.prepareStatement(sb.toString());
				
				pstmt.setString(1, dto.getPasswd());
				pstmt.setString(2, dto.getName());
				pstmt.setString(3, dto.getEmail());
				pstmt.setString(4, dto.getHp());
				pstmt.setString(5, dto.getZipcode());
				pstmt.setString(6, dto.getAddress1());
				pstmt.setString(7, dto.getAddress2());
				pstmt.setString(8, dto.getUserid());

				
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
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
		
	}

	public void delete(String userid) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DB.getConn();
			String sql ="delete from member where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
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
		
	}

	public String loginCheck(MemberDTO dto) {
		String result ="";
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DB.getConn();
			String sql ="select name from hplan_member\r\n"
					+ "where userid =? and passwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getPasswd());
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //로그인 성공
				result = rs.getString("name")+"님 환영합니다.";
				
			}else {//로그인 실패
				result = "로그인 실패";
				
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
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
		return result;
	}
	// 오라클 암호화를 적용한 코드
	public void insertCrypt(MemberDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet은 select할때문 필요한 객체
		try {
			conn=DB.getConn();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into member ");
			sql.append("(userid,passwd,name,email,hp) values ");
			sql.append("(?,PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT(?),?,?,?)");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getHp());
			pstmt.executeUpdate();//insert,update,delete일 때 사용하는 메소드
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
		
	}

	public String loginCheckOracle(MemberDTO dto) {
		String result ="";
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DB.getConn();
			String sql ="select name from hplan_member\r\n"
					+ "where userid =? and passwd=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT(?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getPasswd());
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //로그인 성공
				result = rs.getString("name")+"님 환영합니다.";
				
			}else {//로그인 실패
				result = "로그인 실패";
				
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			
			try {
				if(rs != null) rs.close();
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
		return result;
	}
	// SHA256 방식의 암호화 처리
	public void insertSha256(MemberDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet은 select할때문 필요한 객체
		try {
			conn = DB.getConn();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into member ");
			sql.append("(userid,passwd,name,email,hp) values ");
			sql.append("(?,?,?,?,?)");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getUserid());//1번은 첫번째 ?를 의미
			SHA256 sha = SHA256.getInstance();
			String shaPass = sha.getSha256(dto.getPasswd().getBytes());
			// 암호화된 비밀번호 입력 
			pstmt.setString(2, shaPass);
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getHp());
	
			pstmt.executeUpdate();//insert,update,delete일 때 사용하는 메소드
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
	}// end insert
	//SHA256 방식의 로그인 체크
	public String loginCheckSha256(MemberDTO dto) {
		
		String result ="";
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DB.getConn();
			String sql ="select name from hplan_member\r\n"
					+ "where userid =? and passwd=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT(?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			SHA256 sha = SHA256.getInstance();
			String shaPass = sha.getSha256(dto.getPasswd().getBytes());
			
			pstmt.setString(2, shaPass);
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //로그인 성공
				result = rs.getString("name")+"님 환영합니다.";
				
			}else {//로그인 실패
				result = "로그인 실패";
				
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		} finally {
			
			try {
				if(rs != null) rs.close();
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
		return result;
	}
	// Bcrypt 방식의 암호화 처리
	public void insertBcrypt(MemberDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet은 select할때문 필요한 객체
		try {
			conn = DB.getConn();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into member ");
			sql.append("(userid,passwd,name,email,hp) values ");
			sql.append("(?,?,?,?,?)");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getUserid());//1번은 첫번째 ?를 의미
			String passwd = BCrypt.hashpw(dto.getPasswd(), BCrypt.gensalt());
			pstmt.setString(2, passwd );
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getHp());
		
			pstmt.executeUpdate();//insert,update,delete일 때 사용하는 메소드
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
	}// end insert

	public String loginCheckBcrypt(MemberDTO dto) {
		
		String result ="";
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DB.getConn();
			String sql ="select * from member\r\n"
					+ "where userid =? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getPasswd());
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //로그인 성공
				String passwd = rs.getString("passwd");
				if(BCrypt.checkpw(dto.getPasswd(), passwd)) {
					
					result = rs.getString("name")+"님 환영합니다.";
				}else {
					result = "로그인 실패";
				}
			}else {//로그인 실패
				result = "로그인 실패";	
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
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
		return result;
	}
}