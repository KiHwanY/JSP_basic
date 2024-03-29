package page;

public class Pager {
	public static final int PAGE_SCALE=10;//페이지당 게시물수(10개)
	public static final int BLOCK_SCALE=10;//페이지 블록 갯수
	private int curPage; //현재 페이지 
	private int prevPage; //이전 페이지
	private int nextPage; //다음 페이지
	private int totPage; //전체 페이지 갯수
	private int totBlock; //전체 페이지블록 갯수
	private int curBlock; //현재 페이지블록  
	private int prevBlock; //이전 페이지블록
	private int nextBlock; //다음 페이지블록
	private int pageBegin; // #{start}에 전달될 값
	private int pageEnd; // #{end}에 전달될 값
	private int blockStart; //페이지블록의 시작페이지 번호
	private int blockEnd; //페이지블록의 끝페이지 번호
	
	//getter,setter만 생성, 단 상수2개는(PAGE_SCALE,BLOCK_SCALE)빼고 만듦
	
	// Pager(레코드갯수, 보여줄페이지번호) 
	public Pager(int count, int curPage){
		curBlock=1; //페이지블록을 1로 초기화
		this.curPage=curPage; 
		setTotPage(count); //전체 페이지 갯수 계산
		setPageRange(); // #{start}, #{end} 값 계산
		setTotBlock(); // 페이지블록의 갯수 계산
		setBlockRange(); //페이지블록의 범위 설정
	}
	//페이지블록의 범위 설정 
	public void setBlockRange(){
		//현재페이지가 몇번째 페이지블록에 속하는지 계산
		//(현재페이지-1)/페이지블록단위 + 1
		curBlock=(int)Math.ceil((curPage-1) / BLOCK_SCALE)+1;
		//(현재블록-1)*블록단위+1
		blockStart=(curBlock-1) * BLOCK_SCALE + 1;
		//블록시작번호+(페이지블록단위-1)
		blockEnd=blockStart + (BLOCK_SCALE-1);
		//블록의 마지막 페이지번호가 범위를 초과하지 않도록 처리
		if(blockEnd > totPage){
			blockEnd = totPage;
		}
		//[이전] 11 12 13 14 15 16 17 18 19 20 [다음]
		//[이전]을 눌렀을 때 이동할 페이지, 현재블럭이 1이면 1로감,[이전]이란표시는 빼야함
		prevPage=curBlock==1 ? 1 : (curBlock-1) * BLOCK_SCALE;
		//[다음]을 눌렀을 때 이동할 페이지
		nextPage=curBlock>totBlock 
				? (curBlock*BLOCK_SCALE) : (curBlock*BLOCK_SCALE)+1;
		if(nextPage >= totPage){//다음페이지가 토탈페이지보다 크면 [다음]표시뺌
			nextPage = totPage;
		}
	}
	public void setPageRange(){
		//시작번호=(현재페이지 - 1 ) * 페이지당게시물수 + 1
		pageBegin = (curPage - 1) * PAGE_SCALE + 1;
		//끝번호=시작번호 + ( 페이지당게시물수 – 1 )
		pageEnd = pageBegin + (PAGE_SCALE - 1);
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getTotPage() {
		return totPage;
	}
	//전체 페이지 갯수 계산
	public void setTotPage(int count) {
		// 991 / 10 => 99.1 올림 => 100
		// 991/10 => 99
		// 991.0/10 => 99.1
		//ceil() 올림, round() 반올림, floor() 버림 
		totPage = (int)Math.ceil(count * 1.0 / PAGE_SCALE);
	}
	public int getTotBlock() {
		return totBlock;
	}
	//페이지블록의 갯수 계산
	public void setTotBlock() {
		// 991페이지 : 991/10 => 99, 한페이지 누락이기때문에 올림(ceil)처리함
		totBlock = (int)Math.ceil(totPage * 1.0 / BLOCK_SCALE);
	}
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
	public int getPrevBlock() {
		return prevBlock;
	}
	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}
	public int getNextBlock() {
		return nextBlock;
	}
	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}
	public int getPageBegin() {
		return pageBegin;
	}
	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}
	public int getPageEnd() {
		return pageEnd;
	}
	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}
	public int getBlockStart() {
		return blockStart;
	}
	public void setBlockStart(int blockStart) {
		this.blockStart = blockStart;
	}
	public int getBlockEnd() {
		return blockEnd;
	}
	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}
	
	
}
