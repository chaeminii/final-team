package kr.co.doublecome.auction.service;

import java.util.List;

import kr.co.doublecome.repository.vo.AjaxPage;
import kr.co.doublecome.repository.vo.Auction;
import kr.co.doublecome.repository.vo.Category;
import kr.co.doublecome.repository.vo.History;
import kr.co.doublecome.repository.vo.InfinitePage;
import kr.co.doublecome.repository.vo.Inquiry;
import kr.co.doublecome.repository.vo.Review;
import kr.co.doublecome.repository.vo.Search;
import kr.co.doublecome.repository.vo.UtilFile;

public interface AuctionDetailService {

	Auction auctiondetail(int no);
	History userInfo(String userEmail);
	List<Review> selectReceiveReview(Search search);
	AjaxPage retrieveinquiry(int no,int pageNo);
	void insertInquiry(Inquiry inquiry);
	List<Category> categoryList();
	void addFile(UtilFile file);
	int maxFileGroupCode();
	void addAuction(Auction auction);
	List<UtilFile> retrieveFile(int no);
	void deleteAuction(int no);
}
