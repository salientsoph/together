package kosta.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.mvc.service.ReportService;

@Controller
//@RequestMapping("report")
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	
	/**
	 * 전체검색하기
	 * */
	@RequestMapping("/match-report/list")
	public String list() {
		
		return "report/report-list";
	}
	
	@RequestMapping("test/test")
	public void test() {}
	
	@RequestMapping("report/test")
	public void test2() {}

}
