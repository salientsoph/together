package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kosta.mvc.domain.Customer;
import kosta.mvc.service.PlaceBoardService;
import kosta.mvc.service.PlaceLikeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * 사용자의 찜하기 요청을 핸들링할 컨트롤러. 
 * 로그인한 사용자 정보와 찜하기를 추가할 PlaceBoard의 id값을 받아서 서비스에 위임한다.
 */
@Slf4j
@Controller
@RequestMapping("/placeLike")
@RequiredArgsConstructor
public class PlaceLikeController {

	private final PlaceLikeService placeLikeService;
	private final PlaceBoardService placeBoardService;
	
//	/**
//	 * 찜하기 클릭시 찜하기 저장 
//	 */
//	@RequestMapping("/insert/{placeNo}")
//	@ResponseBody
//	public String insertLike(HttpSession session, @PathVariable Long placeNo) {
//  
//		boolean result = false;
//
//		//세션 객체 안에 있는 ID정보 저장
//		Object objId =  session.getAttribute("id");
//
//		if(objId != null){
//			Customer customer =  Customer.builder().userId(objId.toString()).build();
//			result = placeLikeService.insertLike(customer , placeNo);
//		}
//
//		return result ? "SUCCESS" : "Fail";
//	}

//	/**
//	 * 찜하기 취소
//	 */
//	@DeleteMapping("/delete/{placeNo}")
//	public String deleteLike(HttpSession session, @PathVariable Long placeNo) {
//
//		//세션 객체 안에 있는 ID정보 저장
//		Object objId =  session.getAttribute("id");
//
//		if(objId != null){
//			Customer customer =  Customer.builder().userId(objId.toString()).build();
//			placeLikeService.deleteLike(customer , placeNo);
//		}
//
//		return "SUCCESS";
//	}

//	/** 
//	 * 이미 찜하기 했는지 카운트 
//	 */
//	@RequestMapping("/count/{placeNo}")
//	public  ResponseEntity<List<String>> getLikeCount(HttpSession session, @PathVariable Long placeNo) {
//
//		//세션 객체 안에 있는 ID정보 저장
//		Object objId =  session.getAttribute("id");
//
//		log.info("placeNo : {} ", placeNo);
//		log.info("loginMember : {} ", objId);
//
//		Customer customer =  Customer.builder().userId(objId.toString()).build();
//		List<String> resultData = placeLikeService.count(customer, placeNo);
//
//		log.info("likeCount : {} ", resultData);
//
//		return new ResponseEntity<>(resultData, HttpStatus.OK);
//	}

}