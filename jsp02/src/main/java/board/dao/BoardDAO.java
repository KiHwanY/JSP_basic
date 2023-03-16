package board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sqlmap.MybatisManager;

public class BoardDAO {
	//게시물 목록 리턴
	public List<BoardDAO> list(){
		List<BoardDAO> list= null;
		SqlSession session = null;
		
		//혹시 모를 예외발생을 위해 try~catch를 쓰는게 좋다
		try {
			session = MybatisManager.getInstance().openSession();
			list = session.selectList("board.list");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session != null) session.close();
		}
		return list;
	}
}
