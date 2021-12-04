package kosta.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Seller;
import kosta.mvc.service.LoginService;
import kosta.mvc.service.PlaceLikeService;
import lombok.RequiredArgsConstructor;

/**
 * Customer 사용자 마이페이지 컨트롤러 
 */
@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class CustomerController {

	private final PlaceLikeService placeLikeService;
	private final LoginService loginService;

	/**
	 * 현재 로그인한(세션으로) 사용자에 해당하는 찜 목록 전체 검색하기
	 */
	@RequestMapping("/mylike")
	public ModelAndView placeLikelist(@RequestParam(defaultValue = "1") int nowPage, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/mylike");//뷰쪽으로 전달될 데이터정보

		//세션 객체 안에 있는 ID정보 저장
		Object objId =  session.getAttribute("id");

		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();

		Pageable pageable = PageRequest.of(nowPage-1, 10, Direction.DESC, "placeLikeNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		Page<PlaceBoard> placeList = placeLikeService.findLikedPlace(loginCustomer, pageable);


		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;

		mv.addObject("placeList", placeList);
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		mv.addObject("userId", loginCustomer);

		return mv;
	}

	/**
	 * 내가 쓴 매칭게시판 글 보기 
	 */
	@RequestMapping("/mywrite")
	public void write() {
		
	}

	/**
	 * 내 프로필 보기
	 */
	@RequestMapping("/myprofile")
	public ModelAndView profile(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myprofile");//뷰쪽으로 전달될 데이터정보

		//세션 객체 안에 있는 ID정보 저장
		Object objId =  session.getAttribute("id");

		if(session.getAttribute("role").equals("customer")) {
			Customer loginCustomer =  loginService.customerIdCheck((String) objId);
			mv.addObject("user", loginCustomer);
			
		}else if(session.getAttribute("role").equals("seller")) {
			Seller loginSeller =  loginService.sellerIdCheck((String) objId);
			mv.addObject("user", loginSeller);
		}
		return mv;
	}
	
	/**
	 * 내 프로필 수정하기 
	 */
	@RequestMapping("/myprofileUpdate")
	public ModelAndView profileUpdate(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myprofile");//뷰쪽으로 전달될 데이터정보

		//세션 객체 안에 있는 ID정보 저장
		Object objId =  session.getAttribute("id");

		Customer loginCustomer =  loginService.customerIdCheck((String) objId);
		mv.addObject("customer", loginCustomer);
		
		return mv;
	}


	/**
	 * 사용자 번호로 내가 쓴 리뷰 보기 
	 */

	/**
	 * 내가 신청한 모임 보기
	 */

	//현재 Controller에서 발생하는 모든 에외처리
	@ExceptionHandler(Exception.class)
	public ModelAndView error(Exception e) {
		return new ModelAndView();
	}

}
