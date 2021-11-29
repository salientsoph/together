package kosta.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import kosta.mvc.domain.Report;

public interface ReportService {
	
	/**
	 * 신고 게시물 전체 조회 (관리자용)
	 * */
	Page<Report> selectAll(Pageable pageable);
	
	/**
	 * 회원이 작성한 신고 게시물 조회 (고객용, 관리자 검색용)
	 *  회원 아이디 필요함.
	 * */
	public Page<Report> selectByUserId(Pageable pageable, String userId);
	
	/**
	 * 신고 게시물 작성 (회원용)
	 *  회원 아이디 (누가 작성하는건지)
	 *  신고사유 번호 (무슨 사유로 작성하는지)
	 *  매칭게시판 번호 (어떤 게시글을 신고하는지)
	 *  Report 객체 (제목, 내용)
	 *  필요함.  
	 * */
	void insert(String userId, Long reportReasonsNo, Long matchNo, Report report);
	
	/**
	 * 신고 게시물 삭제 (회원용)
	 *  신고게시물 번호 필요 
	 * */
	void delete(Long reportNo);
	
	/**
	 * 신고 게시물 상태 변경 (관리자용)
	 *  신고게시물 번호 (어떤 게시물 상태를 변경하는지)
	 *  새로운 상태 (어떤 상태로 변경하는지)
	 *  필요함.
	 * */
	void updateStatus(Long reportNo, String reportStatus);

	/**
	 * 신고 게시물 상세 조회
	 *  신고 게시물 번호 (어떤 게시물 조회하는지) 
	 *  필요함.
	 * */
	Report selectByReportNo(Long reportNo);
}
