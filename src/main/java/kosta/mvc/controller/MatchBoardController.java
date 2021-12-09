package kosta.mvc.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.MatchReply;
import kosta.mvc.domain.NoticeBoard;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.dto.MatchBoardDTO;
import kosta.mvc.service.LoginService;
import kosta.mvc.service.MatchBoardService;
import kosta.mvc.service.MatchReplyService;
import kosta.mvc.service.RegionService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/match")
@RequiredArgsConstructor
public class MatchBoardController {
	private final MatchBoardService matchBoardService; 
	private final RegionService regionService; 
	private final MatchReplyService matchReplyService;
	private final LoginService loginService;
	
	/**
	 * 전체 검색하기 
	 * */
	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(defaultValue = "1") int nowPage,
							@RequestParam(defaultValue = "") Integer region, 
							@RequestParam(defaultValue = "") String tripDate,
							@RequestParam(defaultValue = "") Integer matchAgeGroup,
							@RequestParam(defaultValue = "") Integer matchGender
			) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("match/list");

		Page<MatchBoard> pageList = null;
		List<Region> regionList = regionService.selectAll();
		Pageable pageable = PageRequest.of(nowPage-1, 10, Direction.DESC, "matchNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		
		if(region == null | tripDate == null | matchAgeGroup == null | matchGender == null) {
			pageList = matchBoardService.selectAll(pageable);
		} else {
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			// 문자열 -> Date
			LocalDate date = LocalDate.parse(tripDate, formatter);
			Region regionObj = regionService.selectByRegionNo(region);
			pageList = matchBoardService.pageByRegionAndDate(regionObj, date, Integer.valueOf(matchAgeGroup), Integer.valueOf(matchGender), pageable);
		}

		//Page<MatchBoard> pageByRegionAndDate(int region, String date, int ageRange, int gender, Pageable pageable);
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("region", regionList);
		mv.addObject("matchList", pageList);
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		
		return mv;
	}
	
	/**
	 * 지역과 날짜로 검색하기
	 * */
	/*
	@RequestMapping("/list/search")
	public ModelAndView findByRegionAndDate(@RequestParam(defaultValue = "1") int nowPage,
											@RequestParam(value = "" ) int region, 
											@RequestParam(value = "" ) String date
											) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		// 문자열 -> Date
		LocalDate tripDate = LocalDate.parse(date, formatter);
	
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("match/list");

		Pageable pageable = PageRequest.of(nowPage-1, 10, Direction.DESC, "matchNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		Page<MatchBoard> pageList = matchBoardService.pageByRegionAndDate(region, date, nowPage, region, pageable);
		List<Region> regionList = regionService.selectAll();
		
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("region", regionList);
		mv.addObject("matchList", pageList);
		mv.addObject("blockCount", blockCount);
		mv.addObject("nowPage", nowPage);
		mv.addObject("startPage", startPage);
		
		
		return mv;
	}*/
	
	
	
	
	/**
	 * 등록폼  
	 * */
	@RequestMapping("/write")
	public ModelAndView write() {
		ModelAndView mv = new ModelAndView();
		List<Region> regionList = regionService.selectAll();
		mv.addObject("region", regionList);
		
		return mv;
	}

	
	
	/**
	 * 등록하기 
	 * */
	@RequestMapping("/insert")
	public String insert(MatchBoardDTO boardDTO) {
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		// 문자열 -> Date
		LocalDate tripDate = LocalDate.parse(boardDTO.getTripDate(), formatter);
		
		Customer customer = loginService.customerIdCheck(boardDTO.getCustomer());
		
		Region region = regionService.selectByRegionNo(boardDTO.getRegion());
		
		
		MatchBoard board = boardDTO.dtoToDomain(boardDTO);
		
		board.setCustomer(customer);
		board.setRegion(region);
		board.setTripDate(tripDate);
		
		/*
		System.out.println("*****************");
		System.out.println();
		System.out.println(board);
		System.out.println();
		System.out.println("*****************");
		*/
		
		//등록 전에 입력한 데이터에 유효하지 않는 특수문자/스크립트태그 등이 있으면 태그가 아닌 문자열로 변경해준다. 
		//실무에선 filter로 적용 
		board.getMatchContent().replace("<", "&lt;"); //그냥 텍스트로 나오게 한다. 
		matchBoardService.insert(board);
		return "redirect:/match/list";
	}
	
	
	/**
	 * 상세보기 
	 * */
	@RequestMapping("read/{matchNo}")
	public ModelAndView read(@PathVariable Long matchNo, String flag) {
		
		boolean state = flag == null; 
		
		MatchBoard mb = matchBoardService.selectBy(matchNo, true); 
		List<MatchReply> mr = matchReplyService.selectByMatchBoard(matchNo);
		List<String> requestedCustomerList = matchBoardService.selectAllRequestedCustomer(matchNo);
		List<String> approvedCustomerList = matchBoardService.selectAllApprovedCustomer(matchNo);
		
		System.out.println("*****************");
		System.out.println();
		System.out.println(approvedCustomerList);
		System.out.println();
		System.out.println("*****************");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("match/read");
		mv.addObject("approvedCustomerList", approvedCustomerList);
		mv.addObject("requestedCustomerList", requestedCustomerList);
		mv.addObject("match", mb);
		mv.addObject("matchReply", mr);
		return mv; 
	}
	
	
	/**
	 * 수정폼 
	 * */
	@RequestMapping("/updateForm")
	public ModelAndView updateForm(Long matchNo) {
		System.out.println("----------------------수정폼 띄우기");
		MatchBoard mb = matchBoardService.selectBy(matchNo, false); //조회수 증가 안되게 
		ModelAndView mv = new ModelAndView("match/update", "match", mb);
		return mv;
	}
	
	
	/**
	 * 수정완료 
	 * */
	@RequestMapping("/update")
	public ModelAndView update(MatchBoard board) {
		System.out.println("----------------------수정완료 ");
		MatchBoard matchBoard = matchBoardService.update(board);
		return new ModelAndView("match/read", "match", matchBoard);
	}
	
	
	
	/**
	 * 삭제하기 
	 * */
	@RequestMapping("/delete")
	public String delete(Long noticeNo) {
		System.out.println("------------------------삭제하기 완료");
		matchBoardService.delete(noticeNo);
		return "redirect:/match/list";
	}
	
	
	
}
