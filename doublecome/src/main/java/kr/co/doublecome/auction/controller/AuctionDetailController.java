package kr.co.doublecome.auction.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doublecome.auction.service.AuctionDetailService;
import kr.co.doublecome.common.service.FileService;
import kr.co.doublecome.repository.vo.AjaxPage;
import kr.co.doublecome.repository.vo.Auction;
import kr.co.doublecome.repository.vo.Inquiry;
import kr.co.doublecome.repository.vo.Search;
import kr.co.doublecome.repository.vo.UtilFile;

@Controller("kr.co.doublecome.auction.controller.AuctionDetailController")
@RequestMapping("/auction")
public class AuctionDetailController {

	@Autowired
	private AuctionDetailService service;
	@Autowired
	private FileService fileService;
	
	@RequestMapping("/detailAuction.do")
	public void auctionDetail(int no, String userEmail, Model model, int pageNo, Search search ) {
		model.addAttribute("auction", service.auctiondetail(no));
		model.addAttribute("user", service.userInfo(userEmail));
		search.setKeyword(userEmail);
		search.setPageNo(2);
		System.out.println(service.selectReceiveReview(search));
		model.addAttribute("review", service.selectReceiveReview(search));
		AjaxPage ap = service.retrieveinquiry(no, pageNo);
		model.addAttribute("inquiry", ap.getList());
		model.addAttribute("pr", ap.getPr());
		model.addAttribute("file", service.retrieveFile(no));
	}
	
	
	@RequestMapping("/insertAuction.do")
	public void auctionInsert(Model model) {
		model.addAttribute("category", service.categoryList());
	}
	
	@RequestMapping("/inquiry_add.do")
	public String insertInquiry(@RequestHeader(value="referer") String referer, Inquiry inquiry, Principal principal) {
		inquiry.setUserEmail(principal.getName());
		service.insertInquiry(inquiry);
		return "redirect:" + referer;
	}
	
	@RequestMapping("/addAuction.do")
	public String addAuction(@RequestHeader(value = "referer") String referer, Principal principal, Auction auction, UtilFile uFile) throws Exception {
		
		int groupCode = fileService.uploadFile(uFile).getFileGroupCode();
		
		auction.setUserEmail(principal.getName());
		auction.setAuctionBuyNow(auction.getAuctionBuyNow().replaceAll(",", ""));
		auction.setAuctionMinPrice(auction.getAuctionMinPrice().replaceAll(",", ""));
		auction.setFileGroupCode(groupCode);
		service.addAuction(auction);
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/deleteAuction.do")
	public String updateAuction(int no, Model model) {
		service.deleteAuction(no);
		return "redirect:/main.do";
	}
	
}
