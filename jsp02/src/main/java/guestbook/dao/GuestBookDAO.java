package guestbook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import guestbook.dto.GuestBookDTO;
import sqlmap.MybatisManager;

public class GuestBookDAO {
	
	public List<GuestBookDTO> getList(){
		SqlSession session= MybatisManager.getInstance().openSession();
		//selectList("네임스페이스.아이디"); - "네임스페이스는 생략 가능"
		List<GuestBookDTO> list = session.selectList("gblist");
		session.close();
		return list;
		
	}
}
