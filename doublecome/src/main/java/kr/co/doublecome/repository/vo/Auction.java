package kr.co.doublecome.repository.vo;

import lombok.Data;

@Data	
public class Auction {
	private int auctionNo;					// 경매글 번호
	private String auctionTitle;			// 경매글 제목
	private String auctionContent;			// 경매글 내용
	private String auctionRegDate;     		// 경매글 작성일
	private String auctionLimitDate; 		// 경매 기한
	private int auctionBuyNow;				// 즉시 구매가
	private int auctionMinPrice;			// 경매 시작가
	private int auctionCondition;			// 경매 진행 상태
	private int fileGroupCode; 				// 파일 그룹코드
	private int categoryCode;				// 카테고리
	private int maxPrice;					// 현재 최고 입찰가
	private int bidCnt;						// 입찰 횟수
	private int bidPrice;					// 입찰가
	private String userEmail;				// 경매글쓴이
	private double score;					// 경매글쓴이 평점
	private String userNickname;			// 경매글쓴이 닉네임
	
	private int inquiryNo;					// 문의글 번호
	private String inquiryContent;			// 문의글 내용
	private int inquiryParent;				// 답글 여부
}
