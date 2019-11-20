package kr.co.doublecome.auction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.doublecome.repository.mapper.AuctionDetailMapper;
import kr.co.doublecome.repository.mapper.HistoryMapper;
import kr.co.doublecome.repository.vo.Auction;
import kr.co.doublecome.repository.vo.History;
import kr.co.doublecome.repository.vo.Inquiry;
import kr.co.doublecome.repository.vo.Review;

@Service("kr.co.doublecome.auction.service.AucitonDetailServiceImpl")
public class AucitonDetailServiceImpl implements AuctionDetailService {
	
	@Autowired
	private AuctionDetailMapper mapper;
	
	@Autowired 
	private HistoryMapper Hmapper;
	
	public Auction auctiondetail(int no) {
		return mapper.auctiondetail(no);
	}
	
	public History userInfo(String userEmail) {
		return Hmapper.userInfo(userEmail);
	}
	
	public List<Review> selectReceiveReview(String userEmail) {
		return Hmapper.selectReceiveReview(userEmail);
	}
	
	public List<Auction> retrieveinquiry(int no) {
		return mapper.retrieveinquiry(no);
	}
	
	public void insertInquiry(Inquiry inquiry) {
		mapper.insertInquiry(inquiry);
	}
}
