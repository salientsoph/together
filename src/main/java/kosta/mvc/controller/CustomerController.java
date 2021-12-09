package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
//	@RequestMapping("/passWordCheck")
//	public ModelAndView userPassWordCheck(HttpServletRequest request, String userNickname, String userPhone) {
//		request.setAttribute("userPhone", userPhone);
//		request.setAttribute("userNickname", userNickname);
//		return new ModelAndView("mypage/passWordCheck");
//	}

	/**
	 *  마이페이지-개인정보확인/수정 - 개인정보수정폼
	 */
	@RequestMapping("/profileUpdateForm")
	public String updateCustomerForm(HttpServletRequest request, String userNickname, String userPhone) {
		request.setAttribute("userPhone", userPhone);
		request.setAttribute("userNickname", userNickname);
		return "mypage/profileUpdate";
	}

	/**
	 *  마이페이지-개인정보확인/수정 - 개인정보수정
	 */
	@RequestMapping("/profileUpdate")
	public String updateCustomer(Customer customer ,HttpSession session) {
		customer.setUserId((String)session.getAttribute("id"));
		customerService.updateCustomer(customer);
		return "redirect:/mypage/myprofile";
	}

	/**
	 *  마이페이지 찜 목록 - 조회
	 */
	@RequestMapping("/mylike")
	public ModelAndView userLikeList(HttpSession session, @RequestParam(defaultValue = "1") int nowPage) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
		String userId = loginCustomer.getUserId();
		
		Pageable pageable = PageRequest.of(nowPage-1, 9, Direction.DESC, "placeLikeNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		Page<PlaceLike> placeLike = customerService.selectAll(userId, pageable);
		
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("placeLike", placeLike);
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		System.out.println(placeLike);
		
		mv.setViewName("mypage/mylike");
		
		return mv;
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
	public ModelAndView mywrite(HttpSession session, @RequestParam(defaultValue = "1") int nowPage) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
		String userId = loginCustomer.getUserId();
		
		Pageable pageable = PageRequest.of(nowPage-1, 5, Direction.DESC, "matchNo"); 
		Page<MatchBoard> matchBoard = customerService.selectMatchByCustomer(userId, pageable);
		
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("matchBoard", matchBoard);
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		mv.setViewName("mypage/mywrite");
		
		return mv;
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
	public ModelAndView myreview(HttpSession session, @RequestParam(defaultValue = "1") int nowPage) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Object objId =  session.getAttribute("id");
		Customer loginCustomer =  Customer.builder().userId(objId.toString()).build();
		String userId = loginCustomer.getUserId();
		
		Pageable pageable = PageRequest.of(nowPage-1, 5, Direction.DESC, "reviewNo"); 
		Page<Review> reviewList = customerService.selectReviewByCustomer(userId, pageable);
		
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("reviewList", reviewList);
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		mv.setViewName("mypage/myreview");
		
		return mv;
	}

	//현재 Controller에서 발생하는 모든 예외처리
	@ExceptionHandler(Exception.class)
	public ModelAndView error(Exception e) {
		return new ModelAndView("error/error","errMsg",e.getMessage());
	}//error
	
	
}
