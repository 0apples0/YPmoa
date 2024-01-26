package com.moa.youthpolicy.common;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

// 선택값에 따라 원하는 결과가 다르게 나오게 할 경우에
// 필요한 필드와 기능 구현 
@ToString
@Setter
@Getter
@AllArgsConstructor
public class Criteria {
	
	// 현재 사용자의 페이지 위치
	private int pageNum;
	
	// 한 페이지에 표시될 게시물의 갯수
	private int amount;
	
	// 페이지에 따라 첫번째 글이 어디부터 시작해야 하는지 정하기위해
	private int start;
	
	// 각 화면에 표시되는 페이지의 수
	private static final int pageAmount = 10;

	// 10페이지 앞으로가기 버튼 클릭 시 시작 페이지 지정 (24페이지에서 << 버튼 클릭 시 11페이지로 이동)
	private int prevprevPage;
	// 10페이지 뒤가기 버튼 클릭 시 시작 페이지 지정 (24페이지에서 >> 버튼 클릭 시 31페이지로 이동)
	private int nextnextPage;
	
	// 검색에 사용되는 필드 선언
	private String type; 
	private String keyword;


	private String writer; //내글보기 시 작성자
	private int bno; //댓글 처리 시 글번호
	
    private int cno; // 신고 댓글 처리시 댓글 번호
    public int getCno() {
        return cno;
    }
	
	// 표시할 베스트 댓글 갯수
	private static final int amountBestComment = 3;
	
	// 댓글 개수
	private Integer commentNm;
	
	// wish 검색조건
	private String isAlert;
	private String wishUser;
	
	// policy검색조건
	private String rgnSeNm; 
	private String policyTypeNm;
	private String selectedFilter;
	
	// user검색조건
	private Integer userType;

	// report board 검색 조건
	private String boardType;
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;            // pageNum    start
		this.start = (pageNum-1)*amount; //    1   ->   0
	}   // mapper에서 활용하는 방법 체크 //    2   ->   10
	//    3   ->   20 

	public int getStart() {
		this.start = (this.pageNum-1)*this.amount;
		return this.start;
	}
	
	public int getPrevprevPage() {
		this.prevprevPage = (int) (Math.floor((this.pageNum-pageAmount)/pageAmount)*pageAmount+1);
		return this.prevprevPage;
		
	}
	
	public int getNextnextPage() {
		this.nextnextPage = (int) (Math.floor((this.pageNum+pageAmount)/pageAmount)*pageAmount+1);
		return this.nextnextPage;
		
	}

	// 미션: 이 메서드를 사용하여 검색 기능 구현하기
	// type의 value : TC(제목+내용) 검색 -> {'T','C'}
	public String[] getTypeArr() {
		return type == null? new String[] {} : type.split("");
	}
	
}