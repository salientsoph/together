package kosta.mvc.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Seller;

public interface SellerService {

	/**
	 * Seller 프로필 수정하기
	 */
	int updateSeller(Seller seller);

	/**
	 * Seller가 작성한 매칭게시판 글 조회 - Page처리 
	 */
	Page<PlaceBoard> selectPlaceBySeller(String sellerId, Pageable pageable);

}
