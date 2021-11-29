package kosta.mvc.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kosta.mvc.domain.Customer;
import kosta.mvc.service.PlaceLikeService;
import lombok.RequiredArgsConstructor;
/**
 * 클라이언트의 찜하기 요청을 핸들링할 컨트롤러. 
 * 로그인한 사용자 정보와 찜하기를 추가할 PlaceBoard의 id값을 받아서 서비스에 위임한다.
 */
@RequiredArgsConstructor
@RequestMapping("/mypage")
@RestController
public class PlaceLikeController {
	
	private final PlaceLikeService placeLikeService;


	

}