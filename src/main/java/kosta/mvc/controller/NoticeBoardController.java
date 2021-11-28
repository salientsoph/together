package kosta.mvc.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.NoticeBoard;
import kosta.mvc.service.NoticeBoardService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/notice")
@RequiredArgsConstructor
public class NoticeBoardController {
	private final NoticeBoardService noticeBoardService;
	
	/**
	 * 전체 검색하기 
	 * */
	@RequestMapping("/list")
	public void list(/*Model model, 
				@RequestParam(defaultValue="1") int nowPage*/) {
		/*Pageable pageable = PageRequest.of(nowPage-1, 10, Direction.DESC, "noticeNo"); 
		Page<NoticeBoard> pageList = noticeBoardService.selectAll(pageable);
		
		model.addAttribute("pageList", pageList); //view 쪽으로 전달될 데이터 정보 
		
		int blockCount = 3;
		int temp = (nowPage - 1) % blockCount;
		int startPage = nowPage - temp;
		
		model.addAttribute("blockCount", blockCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("startPage", startPage);*/
	}
	
	
	/**
	 * 등록폼  
	 * */
	@RequestMapping("/write")
	public void write() {
		
	}

	
	
	/**
	 * 등록하기 
	 * */
	@RequestMapping("/insert")
	public String insert(NoticeBoard board) {
		
		//등록 전에 입력한 데이터에 유효하지 않는 특수문자/스크립트태그 등이 있으면 태그가 아닌 문자열로 변경해준다. 
		//실무에선 filter로 적용 
		board.getNoticeContent().replace("<", "&lt;"); //그냥 텍스트로 나오게 한다. 
		
		noticeBoardService.insert(board);
		
		return "redirect:/notice/list";
	}
	
	
	/**
	 * 상세보기 
	 * */
	@RequestMapping("read/{bno}")
	public ModelAndView read(@PathVariable Long noticeNo, String flag) {
		
		boolean state = flag == null; 
		
		NoticeBoard nb = noticeBoardService.selectBy(noticeNo, true); 
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("notice/read");
		mv.addObject("notice", nb);
		
		return mv; 
	}
	
	
	/**
	 * 수정폼 
	 * */
	@RequestMapping("/updateForm")
	public ModelAndView updateForm(Long noticeNo) {
		NoticeBoard nb = noticeBoardService.selectBy(noticeNo, false); //조회수 증가 안되게 
		ModelAndView mv = new ModelAndView("notice/update", "notice", nb);
		return mv;
	}
	
	
	/**
	 * 수정완료 
	 * */
	@RequestMapping("/update")
	public ModelAndView update(NoticeBoard board) {
		NoticeBoard noticeBoard = noticeBoardService.update(board);
	
		return new ModelAndView("board/read", "board", noticeBoard);
	}
	
	
	
	/**
	 * 삭제하기 
	 * */
	@RequestMapping("/delete")
	public String delete(Long noticeNo) {
		noticeBoardService.delete(noticeNo);
		return "redirect:/notice/list";
	}
	
}
