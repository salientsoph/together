package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Seller;
import kosta.mvc.service.LoginService;
import kosta.mvc.service.SellerService;
import lombok.RequiredArgsConstructor;

/**
 * Seller 판매자 마이페이지 
 */
@Controller
@RequestMapping("/seller")
@RequiredArgsConstructor
public class SellerController {

	private final LoginService loginService;
	private final SellerService sellerService;
	
	/**
	 * Seller 마이페이지 - 프로필 보기
	 */
	@RequestMapping("/info")
	public ModelAndView profile(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("seller/info");
		Object objId =  session.getAttribute("id");
		System.out.println(objId);

		if(session.getAttribute("role").equals("customer")) {
			Customer loginCustomer =  loginService.customerIdCheck((String) objId);
			mv.addObject("user", loginCustomer);
			System.out.println(loginCustomer);

		}else if(session.getAttribute("role").equals("seller")) {
			Seller loginSeller =  loginService.sellerIdCheck((String) objId);
			mv.addObject("user", loginSeller);
		}
		return mv;
	}
	
	/**
	 * Seller 마이페이지-개인정보확인/수정 - 개인정보수정폼
	 */
	@RequestMapping("/updateInfoForm")
	public String updateInfoForm(HttpServletRequest request, String sellerNickname, String sellerPhone) {
		request.setAttribute("sellerPhone", sellerPhone);
		request.setAttribute("sellerNickname", sellerNickname);
		return "seller/updateInfo";
	}

	/**
	 *  Seller 마이페이지-개인정보확인/수정 - 개인정보수정
	 */
	@RequestMapping("/updateInfo")
	public String updateSeller(Seller seller ,HttpSession session) {
		seller.setSellerId((String)session.getAttribute("id"));
		sellerService.updateSeller(seller);
		return "redirect:/seller/info";
	}
	
	/**
	 * Seller가 작성한 여행게시판 글 보기
	 */
	@RequestMapping("/write")
	public ModelAndView write(HttpSession session, @RequestParam(defaultValue = "1") int nowPage) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Object objId =  session.getAttribute("id");
		Seller loginSeller =  Seller.builder().sellerId(objId.toString()).build();
		String sellerId = loginSeller.getSellerId();
		
		Pageable pageable = PageRequest.of(nowPage-1, 5, Direction.DESC, "placeNo"); 
		Page<PlaceBoard> placeBoard = sellerService.selectPlaceBySeller(sellerId, pageable);
		
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("placeBoard", placeBoard);
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		mv.setViewName("seller/write");
		
		return mv;
	}
}
