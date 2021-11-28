package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.ReportReasons;

public interface ReportReasonsService {
	
	/**
	 * 신고사유 전체 조회
	 * */
	List<ReportReasons> selectAll();

}
