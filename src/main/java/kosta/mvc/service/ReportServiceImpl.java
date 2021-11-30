package kosta.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.Report;
import kosta.mvc.domain.ReportReasons;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.ReportReasonsRepository;
import kosta.mvc.repository.ReportRepository;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	ReportRepository reportRep;
	
	@Autowired
	ReportReasonsRepository reportReasonsRep;
	
	@Autowired
	CustomerRepository customerRep;
	
	@Autowired
	MatchBoardRepository matchBoardRep;
	
	@Override
	public Page<Report> selectAll(Pageable pageable) {

		Page<Report> list =  reportRep.findAll(pageable);
		return list;
	}

	@Override
	public Page<Report> selectByUserId(Pageable pageable, String userId) {

		Customer customer = customerRep.findById(userId).orElse(null);
		
		Page<Report> list = reportRep.findByCustomer(customer, pageable);
		
		return list;
	}

	@Override
	public void insert(String userId, Long reportReasonsNo, Long matchNo, Report report) {
		Customer customer = customerRep.findById(userId).orElse(null);
		if(customer == null) {
			throw new RuntimeException("아이디 조회 실패");
		}
		
		ReportReasons reportReason = reportReasonsRep.findById(reportReasonsNo).orElse(null);
		if(reportReason == null) {
			throw new RuntimeException("해당 신고사유는 없습니다.");
		}
		
		MatchBoard match = matchBoardRep.findById(matchNo).orElse(null);
		if(match == null) {
			throw new RuntimeException("신고하려는 게시물을 찾을 수 없습니다.");
		}
		
		if(report == null) {
			throw new RuntimeException("누락된 값이 존재");
		}
		
		reportRep.save(Report.builder()
							.reportTitle(report.getReportTitle())
							.reportContent(report.getReportContent())
							.customer(customer)
							.matchBoard(match)
							.reportReasons(reportReason)
							.build());
	}

	@Override
	public void delete(Long reportNo) {
		reportRep.deleteById(reportNo);

	}

	@Override
	public void updateStatus(Long reportNo, String reportStatus) {
		Report report = reportRep.getById(reportNo);

		/*
		 * System.out.println(
		 * "*********************************************************");
		 * System.out.println(report); System.out.println(
		 * "*********************************************************");
		 */
		
		report.setReportStatus(reportStatus);

		/*
		 * System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		 * ; System.out.println(report);
		 * System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		 * ;
		 */
		
		reportRep.save(report);
	}

	@Override
	public Report selectByReportNo(Long reportNo) {
		Report report = reportRep.getById(reportNo);
		
		return report;
	}	

}
