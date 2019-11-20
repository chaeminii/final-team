package kr.co.doublecome.history.service;

import java.util.List;

import kr.co.doublecome.repository.vo.Auction;
import kr.co.doublecome.repository.vo.History;
import kr.co.doublecome.repository.vo.Review;

public interface HistoryService {
	public List<Review> receiveReviewList(String userEmail);
	public List<Review> sendReviewList(String userEmail);
	public History receiveUserInfo(String userEmail);
	public List<Auction> receiveSaleHistory(String userEmail);
	public List<Auction> receiveBuyHistory(String userEmail);
}