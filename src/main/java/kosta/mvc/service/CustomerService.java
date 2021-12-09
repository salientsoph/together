package kosta.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Review;

public interface CustomerService {

	/**
	 * Customer 프로필 수정하기
	 */
	int updateCustomer(Customer customer);
	
	/**
	 * 찜리스트 등록하기
	 */
	int insertLikeList(PlaceLike placeLike);

	/**
	 * 찜리스트 조회하기
	 */
	List<PlaceLike> selectLikeList(String userId);
	
	/**
	 * 찜리스트 전체검색 - Page처리 
	 */
	Page<PlaceLike> selectAll(String userId, Pageable pageable);

	/**
	 * 찜리스트 삭제하기
	 */
	int deleteLikeList(Long placeLikeNo);

	/**
	 * 유저아이디에 해당하는 모든 찜리스트 삭제하기
	 */
	int deleteLikeListByUserId(String userId);

	/**
	 * Customer가 작성한 매칭게시판 글 조회 - Page처리 
	 */
	Page<MatchBoard> selectMatchByCustomer(String userId, Pageable pageable);

	/**
	 * Customer가 신청한 매칭 모임 조회
	 */
	List<MatchBoard> selectMatchList(String userId);

	/**
	 * Customer가 작성한 리뷰 조회 - Page처리
	 */
	Page<Review> selectReviewByCustomer(String userId, Pageable pageable);


	/**
	 * Customer 찜리스트 카테고리 검색
	 */
	Page<PlaceLike> findByCustomer(String userId, Pageable pageable);

}
