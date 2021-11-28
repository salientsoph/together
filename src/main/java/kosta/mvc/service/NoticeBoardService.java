package kosta.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import kosta.mvc.domain.NoticeBoard;

public interface NoticeBoardService {
	/**
	 * 전체검색
	 * */
	List<NoticeBoard> selectAll();
		
	/**
	 * 전체검색 - Page처리
	 * */
	Page<NoticeBoard> selectAll(Pageable pageable);
		
	/**
	 * 등록
	 * */
	void insert(NoticeBoard noticeBoard);
		
	/**
	 * 조회수 증가
	 * state가 true이면 조회수 증가한다.
	 * */
	NoticeBoard selectBy(Long bno , boolean state);
		
	/**
	 * 수정하기
	 * */
	NoticeBoard update(NoticeBoard noticeBoard);
	    
	/**
	 * 삭제하기
	 * */
	void delete(Long noticeNo);
}
