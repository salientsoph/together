package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	 * 판매자 마이페이지 - 프로필 보기
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
	 * 판매자 마이페이지-개인정보확인/수정 - 개인정보수정폼
	 */
	@RequestMapping("/updateInfoForm")
	public String updateInfoForm() {
		return "seller/updateInfo";
	}

	/**
	 *  판매자 마이페이지-개인정보확인/수정 - 개인정보수정
	 */
	@RequestMapping("/updateInfo")
	public ModelAndView updateSeller(Seller seller ,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("seller/info");

		Object objId =  session.getAttribute("id");
		Seller logiseller = Seller.builder().sellerId(objId.toString()).build();
		mv.addObject("user", logiseller);
		sellerService.updateSeller(logiseller);
		return mv;
	}
	
	/**
	 * 판매자가 작성한 여행게시판 글 보기
	 */
	@RequestMapping("/write")
	public ModelAndView write(HttpSession session) {
		Object objId =  session.getAttribute("id");
		Seller loginSeller =  Seller.builder().sellerId(objId.toString()).build();
		String sellerId = loginSeller.getSellerId();
		List<PlaceBoard> placeBoard = sellerService.selectPlaceBySeller(sellerId);
		return new ModelAndView("seller/write", "placeBoard", placeBoard);
	}
}
