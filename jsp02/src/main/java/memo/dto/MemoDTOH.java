package memo.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

@Entity // 데이터베이스의 개체와 매핑, import javax.persistence.
@Table(name = "memo") //memo라는 테이블과 매핑
public class MemoDTOH {
	@Id // 글번호 자동생성을 위한 기본키 set
	@GeneratedValue(strategy=GenerationType.AUTO) //글번호를 자동생성시킴, DBMS에 비종속적이라 oracle, mysql용 시퀀스등 신경안써도 됨.
	@Column(name="idx") //테이블의 컬럼명과 매핑
	private int idx;
	@Column(name="writer")
	private String writer;
	@Column(name="memo")
	private String memo;
	@CreationTimestamp //타임스탬프 생성(날짜형식)
	@Temporal(TemporalType.TIMESTAMP) 
	@Column(name="post_date")
	private Date post_date; //java.util.Date 
	
	//getter,setter,toString,
	//생성자2개 (기본생성자, 또하나는 writer하고 memo만 체크해서 생성)
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	@Override
	public String toString() {
		return "MemoDTOH [idx=" + idx + ", writer=" + writer + ", memo=" + memo + ", post_date=" + post_date + "]";
	}
	public MemoDTOH() {
	}

	public MemoDTOH(String writer, String memo) {
		this.writer = writer;
		this.memo = memo;
	}
	
}
