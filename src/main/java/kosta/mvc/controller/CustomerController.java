package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.Review;
import kosta.mvc.domain.Seller;
import kosta.mvc.service.CustomerService;
import kosta.mvc.service.LoginService;
import lombok.RequiredArgsConstructor;

/**
 * Customer 사용자 마이페이지 
 */
@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class CustomerController {

	private final LoginService loginService;
	private final CustomerService customerService;
	
	/**
	 * 마이페이지-프로필 보기
	 */
	@RequestMapping("/myprofile")
	public ModelAndView profile(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myprofile");//뷰쪽으로 전달될 데이터정보
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
	 * 마이페이지-개인정보확인/수정 - 개인정보 수정전 비밀번호 확인폼
	 */
	@RequestMapping("/passWordCheck")
	public ModelAndView userPassWordCheck() {
		return new ModelAndView("mypage/passWordCheck");
	}

	/**
	 *  마이페이지-개인정보확인/수정 - 개인정보수정폼
	 */
	@RequestMapping("/profileUpdateForm")
	public String updateCustomerForm() {
		return "mypage/profileUpdate";
	}

	/**
	 *  마이페이지-개인정보확인/수정 - 개인정보수정
	 */
	@RequestMapping("/profileUpdate")
	public ModelAndView updateCustomer(Customer customer ,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myprofile");//뷰쪽으로 전달될 데이터정보

		Object objId =  session.getAttribute("id");
		Customer logincustomer = Customer.builder().userId(objId.toString()).build();
		mv.addObject("user", logincustomer);
		customerService.updateCustomer(logincustomer);
		return mv;
	}

	/**
	 *  마이페이지 찜 목록 - 조회
	 */
	@RequestMapping("/mylike")
	public ModelAndView userLikeList(HttpSession session) {
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
		String userId = loginCustomer.getUserId();
		List<PlaceLike> placeLike = customerService.selectLikeList(userId);
		return new ModelAndView("mypage/mylike", "placeLike", placeLike);
	}

	/**
	 * 마이페이지 찜 목록 - 추가
	 */
	@RequestMapping("insertlike")
	public String wish(HttpSession session, Long placeNo) {
		String userId = (String) session.getAttribute("id");
		List<PlaceLike> list = customerService.selectLikeList(userId);
		for (PlaceLike l : list) {
			if (l.getPlaceBoard().getPlaceNo() == placeNo) {
				return "redirect:/place/list";
			}
		}
		Customer customer = new Customer();
		customer.setUserId(userId);
		PlaceBoard placeBoard = new PlaceBoard();
		placeBoard.setPlaceNo(placeNo);
		PlaceLike likeList = new PlaceLike(null, customer, placeBoard);
		customerService.insertLikeList(likeList);
		return "redirect:/place/list";
	}

	/**
	 * 마이페이지 찜 목록 - 찜목록 삭제
	 * state == null 단일항목 삭제
	 * state != null user에 대한 모든 Likelist삭제
	 */
	@RequestMapping("/delLikeList/{placeLikeNo}")
	public String delLikeList(HttpSession session, @PathVariable Long placeLikeNo, String state) {
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();

		if(state == null) {
			customerService.deleteLikeList(placeLikeNo);
		}else {
			customerService.deleteLikeListByUserId(loginCustomer.getUserId());
		}
		return "redirect:/mypage/mylike";
	}

	/**
	 * 내가 쓴 매칭게시판 글 보기
	 */
	@RequestMapping("/mywrite")
	public ModelAndView mywrite(HttpSession session) {
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
		String userId = loginCustomer.getUserId();
		List<MatchBoard> matchBoard = customerService.selectMatchByCustomer(userId);
		return new ModelAndView("mypage/mywrite", "matchBoard", matchBoard);
	}

	/**
	 * 내가 신청한 매칭 모임 보기
	 */
	@RequestMapping("/mymatch")
	public ModelAndView mymatch(HttpSession session) {
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
		String userId = loginCustomer.getUserId();
		List<MatchBoard> matchList = customerService.selectMatchList(userId);
		return new ModelAndView("mypage/mymatch", "matchList", matchList);
	}
	
	
	/**
	 * 내가 쓴 리뷰 보기
	 */
	@RequestMapping("/myreview")
	public ModelAndView myreview(HttpSession session) {
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
		String userId = loginCustomer.getUserId();
		List<Review> reviewList = customerService.selectReviewList(userId);
		return new ModelAndView("mypage/myreview", "reviewList", reviewList);
	}

	/**
	 * 내 여행 일정 보기
	 */
//	@RequestMapping("/myschedule")
//	public ModelAndView myschedule(HttpSession session) {
//		Object objId =  session.getAttribute("id");
//		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
//		String userId = loginCustomer.getUserId();
//		List<ScheduleDetail> scheduleList = customerService.selectScheduleList(userId);
//		return new ModelAndView("mypage/myschedule", "scheduleList", scheduleList);
//	}
	

	//현재 Controller에서 발생하는 모든 에외처리
	@ExceptionHandler(Exception.class)
	public ModelAndView error(Exception e) {
		return new ModelAndView("error/error","errMsg",e.getMessage());
	}//error
	
	
}
