package kosta.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchRequest;
import kosta.mvc.service.MatchBoardService;
import kosta.mvc.service.MatchRequestService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/match")
@RequiredArgsConstructor
public class MatchRequestController {
	
	@Autowired
	private MatchRequestService matchRequestService;
	
	@Autowired
	private MatchBoardService matchBoardService;
	
	/**
	 * 모임 신청하기 
	 * */
	@RequestMapping("/matchRequest")
	public String insert(String matchNo, String customer) {
		/*boolean result = false;
		
		Object objId = session.getAttribute("id");
		
		if(objId != null) {
			Customer cu = Customer.builder().userId(objId.toString()).build();
			result = matchRequestService.insertMatchRequest(customer, request);
		}*/
		
		/*Object objId = session.getAttribute("id");
		System.out.println(objId);
		Customer cu = Customer.builder().userId(objId.toString()).build();
		System.out.println(cu);
		String matchNo = model.getAttribute("matchNo").toString();
		Long matchNoLong = Long.parseLong(matchNo);
		// = matchRequestService.selectMatchRequest(matchNo);
		
		System.out.println(matchNo);
		System.out.println(matchBoardService.selectMatchBoard(matchNoLong));
		*/
		
		Customer cu = Customer.builder().userId(customer).build();
		System.out.println(cu);
		Long matchNoLong = Long.parseLong(matchNo);
		System.out.println(matchNoLong);
		MatchRequest request = MatchRequest.builder().customer(cu).matchBoard(matchBoardService.selectMatchBoard(matchNoLong)).build();
		System.out.println(request);
		
		if (matchRequestService.ifMatchRequest(customer, matchNoLong) == 0) {
			matchRequestService.insertMatchRequest(request);
		}
		
		return "redirect:/match/list";
	}
	
	/**
	 * 모임 승락
	 * */
	@RequestMapping("/matchApprove")
	public void approve(String customer, int matchNo) {
		//HttpSession session = null; 
		//String userId = session.getAttribute("id").toString();
		matchRequestService.approveMatchRequest(customer, matchNo);
	}
	
	/**
	 * 모임 거절
	 * */
	@RequestMapping("/matchDeny")
	public void deny(String customer, int matchNo) {
		matchRequestService.denyMatchRequest(customer, matchNo);
	}
	
	/**
	 * 모임 취소 
	 * */
	@RequestMapping("/matchCancel")
	public void cancel(String customer, int matchNo) {
		matchRequestService.cancelMatchRequest(customer, matchNo);
	}
	
	
}
