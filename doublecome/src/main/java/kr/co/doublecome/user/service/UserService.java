package kr.co.doublecome.user.service;

import java.util.List;

import kr.co.doublecome.repository.vo.Auction;
import kr.co.doublecome.repository.vo.User;

public interface UserService {
	public void insertUser(User user);
	public void updateUser(User user);
	public User selectUserInfo(User user);
	public User findEmail(User user);
	public String findPass(String email);
	public List<Auction> mybidAuction(User user);
	public List<Auction> bidList(String email);
}
