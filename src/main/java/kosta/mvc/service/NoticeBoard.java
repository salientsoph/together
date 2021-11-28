package kosta.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface NoticeBoard {

	 /**
	  * 전체검색
	  */
	List<NoticeBoard> selectAll();
	
	/**
	 * 전체 검색 - page검색 
	 */
	Page<NoticeBoard> selectAll(Pageable pageable);
	
	/**
	 * 등록 
	 */
	void insert(NoticeBoard board);
	
	/**
	 * 글번호 검색 
	 *   : 조회수 증가....
	 *      - state가 true이면 조회수 증가한다.
	 * */
	NoticeBoard selectBy(Long bno, boolean state);
	
	
	/**
	 * 수정하기
	 */
	NoticeBoard update(NoticeBoard board);
	
	/**
	 * 삭제하기
	 */
	void delete(Long notice_no);
}
