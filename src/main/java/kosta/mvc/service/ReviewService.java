package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.Review;

public interface ReviewService {
	/**
	 * 리뷰 등록
	 * */
	void reviewInsert(Review review);
	
	/**
	 * 리뷰 삭제
	 */
	void ReviewDelete(Long reviewNo);
	
	/**
	 * 리뷰 수정
	 * */
	void ReviewUpdate(Long reviewNo, String reviewContent, int star, Long placeNo);

	/**
	 * 리뷰 조회
	 * */
	List<Review> selectByPlaceBoard(Long placeNo);
}
