package kosta.mvc.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.Region;

public interface MatchBoardService {
	 /**
	  * 전체검색
	  * */
	List<MatchBoard> selectAll();
		
	/**
	* 전체검색 - Page처리
	* */
	Page<MatchBoard> selectAll(Pageable pageable);
		
		
	/**
	* 지역, 날짜, 나이대, 성별로 검색 - Page처리
	* */
	Page<MatchBoard> pageByRegionAndDate(Region region, LocalDate date, int ageRange, int gender, Pageable pageable);
	
	
	
	/**
	 * 등록
	 * */
	void insert(MatchBoard board);
		
	/**
	 * 글번호 검색 
	 *   : 조회수 증가....
	 *      - state가 true이면 조회수 증가한다.
	 * */
	MatchBoard selectBy(Long bno , boolean state);
		
	/**
	 * 수정하기
	 * */
		
	MatchBoard update(MatchBoard board);
	    
	/**
	 * 삭제하기
	 * */
	void delete(Long matchNo);

	
	/**
	 * 모임 수락된 모든 사용자
	 * */
	List<String> selectAllApprovedCustomer(Long matchNo);
	
	
	/**
	 * 모임 신청한 모든 사용자 보기
	 * */
	List<String> selectAllRequestedCustomer(Long matchNo);
	
	/**
	 * 게시물 검색 
	 * */
	MatchBoard selectMatchBoard(Long matchNo);
	
}
