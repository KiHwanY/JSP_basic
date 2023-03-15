package guestbook.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*import javax.swing.text.AbstractDocument.Content;
*/
import org.apache.ibatis.session.SqlSession;

import guestbook.dto.GuestBookDTO;
import sqlmap.MybatisManager;

public class GuestBookDAO {
	
	public List<GuestBookDTO> getList(String searchkey, String search){
		SqlSession session= MybatisManager.getInstance().openSession();
		
		List<GuestBookDTO> list = null;
		if(searchkey.equals("name_content")) { //이름 + 내용 
			list = session.selectList("gblistAll", "%"+search+"%");
			
		}else {
			Map<String, String> map = new HashMap<>();
			map.put("searchkey", searchkey);
			map.put("search",  "%"+search+"%");
			list = session.selectList("gblist",map);
		}
		
		
		//selectList("네임스페이스.아이디"); - "네임스페이스는 생략 가능"
//		List<GuestBookDTO> list = session.selectList("gblist");
		
		//줄바꿈, 특수문자 처리 기능 추가
		for(GuestBookDTO dto : list) {
			String content = dto.getContent();
			
			//태그 처리
			content = content.replace("<", "&lt");
			content = content.replace(">", "&gt");
			
			//줄바꿈 처리
			content = content.replace("\n", "<br>");
			
			//공백 2문자 이상 처리
			content = content.replace("  ", "&nbsp;&nbsp;");
			
			//검색키워드 색상 처리
			if(!searchkey.equals("name")) {
				content = content.replace(search, "<span style='color:red'>"+search+"</span>");
			}
			
			dto.setContent(content);
		}
		session.close();
		return list;
		
	}
	//방명록 insert
	public void gbInsert(GuestBookDTO dto) {
		SqlSession session= MybatisManager.getInstance().openSession();
		session.insert("gbInsert", dto);
		session.commit();
		session.close();
		
	}
	//비밀번호 체크 (idx: 게시물 번호, passwd: 사용자의 비번입력값)
	public boolean passwdCheck(int idx, String passwd) {
		boolean result = false;
		SqlSession session= MybatisManager.getInstance().openSession();
		GuestBookDTO dto = new GuestBookDTO();
		dto.setIdx(idx);
		dto.setPasswd(passwd);
		
		//레코드가 1개 리턴
		int count = session.selectOne("passwdCheck", dto);
		session.close();
		
		if(count == 1) {
			result = true;
		}
		
		return result;
	}
	//게시물 상세정보 
	public GuestBookDTO gbDetail(int idx) {
		GuestBookDTO dto = new GuestBookDTO();
		SqlSession session= MybatisManager.getInstance().openSession();
		dto = session.selectOne("gbDetail", idx);
		session.close();
		return dto;
		
	}
	//게시물 수정
	public void gbUpdate(GuestBookDTO dto) {
		SqlSession session= MybatisManager.getInstance().openSession();
		session.update("guestbook.gbUpdate", dto);
		session.commit();
		session.close();
		
	}
	//게시물 삭제
	public void gbDelete(int idx) {
		SqlSession session= MybatisManager.getInstance().openSession();
		session.delete("guestbook.gbDelete", idx);
		session.commit();
		session.close();
		
	}
	
	
}
