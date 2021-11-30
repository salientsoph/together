package kosta.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceLike;

public interface PlaceLikeService {
	
	/**
	 * 찜하기 등록
	 */
	boolean insertLike(Customer customer, Long placeNo);
	
	/**
	 * 찜하기 삭제
	 */
	void deleteLike(Customer customer, Long placeNo);
	
	/**
	 * 관심받은 수(찜하기) - 현재 로그인된 사용자 loginCustomer 정보가 필요함.... 
	 */
	List<String> count(Long placeNo, Customer loginCustomer);

	/**
	 * 로그인한 사용자에 해당하는 찜한 목록 검색하기 - Page처리
	 */
	Page<PlaceLike> selectByUserId(Pageable pageable, String userId);
//	Page<PlaceBoard> findLikedPlaceBoard(Customer customer, Pageable pageable);


}