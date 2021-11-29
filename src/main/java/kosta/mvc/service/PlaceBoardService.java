package kosta.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import kosta.mvc.domain.PlaceBoard;

public interface PlaceBoardService {
	/**
	 * 전체검색
	 * */
	List<PlaceBoard> selectAll();
		
	/**
	 * 전체검색 - Page처리
	 * */
	Page<PlaceBoard> selectAll(Pageable pageable);
		
	/**
	 * 등록
	 * */
	void insert(PlaceBoard placeBoard);
		
	/**
	 * 조회수 증가
	 * state가 true이면 조회수 증가한다.
	 * */
	PlaceBoard selectBy(Long bno , boolean state);
		
	/**
	 * 수정하기
	 * */
	PlaceBoard update(PlaceBoard placeBoard);
	    
	/**
	 * 삭제하기
	 * */
	void delete(Long placeNo);
	
}
