package kosta.mvc.controller;

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

import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Review;
import kosta.mvc.service.PlaceBoardService;
import kosta.mvc.service.RegionService;
import kosta.mvc.service.ReviewService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/place")
@RequiredArgsConstructor
public class PlaceBoardController {
	private final PlaceBoardService placeBoardService; 
	private final RegionService regionService; 
	private final ReviewService reviewService;	
	
	/**
	 * 전체 검색하기 
	 * */
	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(defaultValue = "1") int nowPage) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("place/place-list");

		Pageable pageable = PageRequest.of(nowPage-1, 9, Direction.DESC, "placeNo"); //첫페이지 처리, 한페이지당 10개, 내림차순(no) 
		Page<PlaceBoard> pageList = placeBoardService.selectAll(pageable);
		List<Region> regionList = regionService.selectAll();
		
		int blockCount = 5;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		mv.addObject("region", regionList);
		mv.addObject("placeList", pageList);
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
	public String insert(PlaceBoard board) {
		//등록 전에 입력한 데이터에 유효하지 않는 특수문자/스크립트태그 등이 있으면 태그가 아닌 문자열로 변경해준다. 
		//실무에선 filter로 적용 
		board.getPlaceContent().replace("<", "&lt;"); //그냥 텍스트로 나오게 한다. 
		placeBoardService.insert(board);
		return "redirect:/place/list";
	}
	
	
	/**
	 * 상세보기 
	 * */
	@RequestMapping("read/{placeNo}")
	public ModelAndView read(@PathVariable Long placeNo, String flag) {
		
		boolean state = flag == null; 
		
		PlaceBoard pb = placeBoardService.selectBy(placeNo, true); 
		List<Review> rb = reviewService.selectByPlaceBoard(placeNo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("place/place-read");
		mv.addObject("place", pb);
		mv.addObject("review", rb);
		
		return mv; 
	}
	
	
	/**
	 * 수정폼 
	 * */
	@RequestMapping("/updateForm")
	public ModelAndView updateForm(Long placeNo) {
		System.out.println("----------------------수정폼 띄우기");
		PlaceBoard pb = placeBoardService.selectBy(placeNo, false); //조회수 증가 안되게 
		ModelAndView mv = new ModelAndView("place/update", "place", pb);
		return mv;
	}
	
	
	/**
	 * 수정완료 
	 * */
	@RequestMapping("/update")
	public ModelAndView update(PlaceBoard board) {
		System.out.println("----------------------수정완료 ");
		PlaceBoard placeBoard = placeBoardService.update(board);
		return new ModelAndView("place/read", "place", placeBoard);
	}
	
	
	
	/**
	 * 삭제하기 
	 * */
	@RequestMapping("/delete")
	public String delete(Long placeNo) {
		System.out.println("------------------------삭제하기 완료");
		placeBoardService.delete(placeNo);
		return "redirect:/place/list";
	}
}
