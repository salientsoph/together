package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.Customer;

public interface PlaceLikeService {
	
	/**
	 * 찜하기 등록
	 */
	boolean addLike(Customer customer, Long placeNo);
	
	/**
	 * 찜하기 삭제
	 */
	void cancelLike(Customer customer, Long placeNo);
	
	/**
	 * 관심받은 수(찜하기) 
	 * 현재 로그인된 사용자 loginCustomer 정보가 필요한 상태.... 
	 */
	List<String> count(Long placeNo, Customer loginCustomer);
	
}
