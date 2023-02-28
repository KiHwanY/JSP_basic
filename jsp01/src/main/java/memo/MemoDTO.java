package memo;

public class MemoDTO {
	
	private int idx;
	private String writer;
	private String memo;
	private String memo_date;// 날짜는 계산할 필요가 없으면 String 타입써도 됨,
	//getter,setter, toString
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
	public String getMemo_date() {
		return memo_date;
	}
	public void setMemo_date(String memo_date) {
		this.memo_date = memo_date;
	}
	@Override
	public String toString() {
		return "MemoDTO [idx=" + idx + ", writer=" + writer + ", memo=" + memo + ", memo_date=" + memo_date + "]";
	}
	
	

}
