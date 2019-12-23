package kr.co.doublecome.auction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.doublecome.auction.service.AuctionServiceImpl;
import kr.co.doublecome.repository.vo.AjaxPage;
import kr.co.doublecome.repository.vo.Auction;
import kr.co.doublecome.repository.vo.Category;
import kr.co.doublecome.repository.vo.Page;
import kr.co.doublecome.repository.vo.SearchAuction;
import kr.co.doublecome.util.page.PageResult;

@Controller("kr.co.doublecome.auction.controller.AuctionController")
@RequestMapping("/auction")
public class AuctionController {
	
	@Autowired
	private AuctionServiceImpl service;
	
	@RequestMapping("/searchAuction.do")
	public void auctionList(Model model, SearchAuction search) {
		Category category= new Category();
		category.setCategoryCode(search.getCategoryCode());
		category.setCategoryName(search.getCategoryName());
		AjaxPage ap = service.auctionList(search);
		PageResult pr = ap.getPr();
		System.out.println("끝나는페이지" + pr.getEndPage());;
		model.addAttribute("pr", ap.getPr());
		model.addAttribute("selectCategory",category);
		model.addAttribute("category",service.listCategory());
		model.addAttribute("auctionlist", ap.getList());		
	}
	@RequestMapping("/searchActionList.do")
	@ResponseBody
	public AjaxPage auctionSearchList(@RequestBody SearchAuction search) {
		System.out.println(search.getListSize());
		System.out.println(search.getPageNo());
		return service.auctionList(search);
	}
}
