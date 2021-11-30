package kosta.mvc.controller;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.service.PlaceLikeService;
import lombok.RequiredArgsConstructor;

/**
 * 클라이언트의 찜하기 요청을 핸들링할 컨트롤러. 
 * 로그인한 사용자 정보와 찜하기를 추가할 PlaceBoard의 id값을 받아서 서비스에 위임한다.
 */
@RestController
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class PlaceLikeController {
	private final PlaceLikeService placeLikeService;
	
	/**
	 * 현재 로그인한 사용자에 해당하는 찜한 목록 전체 검색하기
	 */
	@RequestMapping("/list/{userId}")
	public ModelAndView list(@RequestParam(defaultValue = "1") int nowPage, @RequestParam(defaultValue="jang")String userId) {
		ModelAndView mv = new ModelAndView();
		
		Pageable pageable = PageRequest.of(nowPage-1, 10, Direction.DESC, "placeNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		Page<PlaceLike> pageList = placeLikeService.selectByUserId(pageable, userId);placeLikeService.selectByUserId(pageable, userId);
		
		mv.setViewName("mypage/mylike");//뷰쪽으로 전달될 데이터정보
		
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("likeList", pageList);
		
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		mv.addObject("userId", userId);
		
		return mv;
	}

	
	/**
	 * 전달받은 장소게시판 번호로 찜하기 등록 
	 */
//	@RequestMapping("/like/{placeNo}")
//	public ResponseEntity<String> addLike(Customer loginCustomer, @PathVariable Long placeNo) {
//
//		boolean result = false;
//
//		if(loginCustomer != null){
//			result = placeLikeService.insertLike(loginCustomer, placeNo);
//		}
//		return result ?
//				new ResponseEntity<>(HttpStatus.OK) : new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//	}


	/**
	 * 찜하기 취소
	 */
//	@DeleteMapping("/like/{placeNo}")
//	public ResponseEntity<String> cancelLike(Customer loginCustomer, @PathVariable Long placeNo) {
//		
//		if (loginCustomer != null) {
//			placeLikeService.deleteLike(loginCustomer, placeNo);
//		}
//
//		return new ResponseEntity<>(HttpStatus.OK);
//	}
}

