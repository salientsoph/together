package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.Report;
import kosta.mvc.domain.ReportReasons;
import kosta.mvc.service.ReportReasonsService;
import kosta.mvc.service.ReportService;

@Controller
@RequestMapping("/report")
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	
	@Autowired
	private ReportReasonsService reportReaonsService;
	
	/**
	 * 전체검색하기
	 * */
	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(defaultValue = "1") int nowPage) {
							//파라메터로 nowPage가 안들어오면 기본값으로 0을 줘라.
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("report/report-list");
		
		Pageable pagable = PageRequest.of((nowPage-1), 10, Direction.DESC, "reportNo"); //첫페이지, 10개씩, 내림차순, 글번호기준
		Page<Report> list = reportService.selectAll(pagable);
		
		int blockCount=5;
		int tmp=(nowPage-1)%blockCount;
		int startPage = nowPage - tmp;
		
		mv.addObject("reportList", list);

		mv.addObject("blockCount", blockCount);
		mv.addObject("startPage", startPage);
		mv.addObject("nowPage", nowPage);
		/*
		System.out.println("******************************************");
		System.out.println();
		
		System.out.println("blockCount: " + blockCount);
		System.out.println("startPage: " + startPage);
		System.out.println("nowPage: " + nowPage);

		System.out.println();
		System.out.println("******************************************");
		*/
		
		
				
		return mv;
	}
	
	/**
	 * 상세 조회
	 * */
	@RequestMapping("/read/{reportNo}")
	public ModelAndView read(@PathVariable Long reportNo) {
		ModelAndView mv = new ModelAndView();
		
		Report report = reportService.selectByReportNo(reportNo);
		
		mv.addObject("report", report);
		
		mv.setViewName("report/report-read");
		
		return mv;
	}
	
	/**
	 * 상태 수정 (관리자 전용)
	 * */
	@RequestMapping("/updateStatus")
	public ModelAndView updateStatus(Report report) {
		ModelAndView mv = new ModelAndView();
		
		Long reportNo = report.getReportNo();
		String reportStatus = report.getReportStatus();
		
		reportService.updateStatus(reportNo, reportStatus);
		
		/*
		System.out.println();
		System.out.println("*********************************************");
		
		System.out.println("reportNo : " + reportNo);

		System.out.println("reportStatus : " + reportStatus);

		System.out.println("*********************************************");
		System.out.println();
		*/
		
		mv.setViewName("redirect:/report/read/"+reportNo);
		return mv;
	}
	
	/**
	 * AJAX로 신고 사유 리스트 뽑아오기
	 * */
	@RequestMapping("/reasonsList")
	@ResponseBody
	public List<ReportReasons> reasonsList(HttpServletRequest request){
		List<ReportReasons> list = reportReaonsService.selectAll();
		
		/*
		 * System.out.println();
		 * System.out.println("*********************************************");
		 * 
		 * for(ReportReasons reason : list) { System.out.println("reason : " + reason);
		 * }
		 * 
		 * System.out.println("*********************************************");
		 * System.out.println();
		 */
		
		return list;
	}
	
	@RequestMapping("/report-insert")
	public void insertForm() {}
}
