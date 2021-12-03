package kosta.mvc.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
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

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.MatchReply;
import kosta.mvc.domain.NoticeBoard;
import kosta.mvc.domain.Region;
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
	
	/**
	 * 전체 검색하기 
	 * */
	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(defaultValue = "1") int nowPage) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("match/list");

		Pageable pageable = PageRequest.of(nowPage-1, 10, Direction.DESC, "matchNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		Page<MatchBoard> pageList = matchBoardService.selectAll(pageable);
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
	}
	
	/**
	 * 지역과 날짜로 검색하기
	 * */
	@RequestMapping("/list/search")
	public ModelAndView findByRegionAndDate(@RequestParam(defaultValue = "1") int nowPage,
											@RequestParam(value = "" ) int region, 
											@RequestParam(value = "" ) LocalDate date
											) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("match/list");

		Pageable pageable = PageRequest.of(nowPage-1, 10, Direction.DESC, "matchNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		Page<MatchBoard> pageList = matchBoardService.selectByRegionAndDate(pageable);
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
	}
	
	
	
	
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
	public String insert(MatchBoard board) {
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
		ModelAndView mv = new ModelAndView();
		mv.setViewName("match/read");
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
