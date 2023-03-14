package memo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import memo.dto.MemoDTO;
import sqlmap.MybatisManager;

public class MemoDAO {
	//여기서는 List대신 ArrayList를 쓰면 에러가 난다. (mybatis 시스템상 타입을 고정시켜 놨다.)
	public List<MemoDTO> listMemo(String searchkey, String search){
		SqlSession session=MybatisManager.getInstance().openSession();
		List<MemoDTO> list=null;
		try {
			if(searchkey.equals("writer_memo")) { 	//이름 + 메모 검색
				list=session.selectList("memo.listAll",search); //search는 검색키워드
			}else {
				Map<String,String> map = new HashMap<>();
				map.put("searchkey", searchkey);
				map.put("search", search);
				//mybatis에서 파라미터(입력매개변수)는 1개만 전달할 수 있음
				list=session.selectList("memo.list",map);
			}
			// insert 때 보다 select때 처리가 더 좋다.
			for(MemoDTO dto : list) {
				String memo = dto.getMemo();
				memo=memo.replace("  ", "&nbsp;&nbsp;"); //공백문자처리(스페이스2개 변환)
				memo=memo.replace("<", "&lt"); // less Than ~보다 작다
				memo=memo.replace(">", "&gt"); // Greater Than ~보다 크다
				//키워드 색상 처리
				if(searchkey.equals("memo")) {
					if(memo.indexOf(search) != -1) {
						memo=memo.replace(search, "<font color='red'>"+ search+"</font>");
					}
				}
				dto.setMemo(memo);
			}
				
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();//mybatis 객체 닫기
		}
		return list;
	}

	public void insertMemo(MemoDTO dto) {
		//mybatis 실행 객체 생성
		SqlSession session=MybatisManager.getInstance().openSession();
		// 태그 문자 처리
//		String memo=dto.getMemo();
//		memo=memo.replace("  ", "&nbsp;&nbsp;"); //공백문자처리(스페이스2개 변환)
//		memo=memo.replace("<", "&lt"); // less Than ~보다 작다
//		memo=memo.replace(">", "&gt"); // Greater Than ~보다 크다
//		dto.setMemo(memo);
		
		session.insert("memo.insert", dto); //레코드 추가, Mybatis에서는 파라미터를 1개 밖에 허용안한다
		session.commit(); // Mybatis는 수동커밋, 자동커밋을 막았다.
		
	}
	
	public MemoDTO viewMemo(int idx) {
		SqlSession session=MybatisManager.getInstance().openSession();
		MemoDTO dto=session.selectOne("memo.view", idx);
		//selectOne() 레코드 1개만 가져올 때
		//selectList() 레코드 2개 이상 가져올 때(목록을 가져올때)
		session.close();
		return dto;
	}

	public void updateMemo(MemoDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("memo.update", dto);
		session.commit();
		session.close();
		
	}

	public void deleteMemo(int idx) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("memo.delete", idx);
		session.commit();
		session.close();
		
	}
	
}
