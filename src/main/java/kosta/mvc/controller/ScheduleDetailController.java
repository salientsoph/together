package kosta.mvc.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.ScheduleDetail;
import kosta.mvc.service.MatchBoardService;
import kosta.mvc.service.PlaceBoardService;
import kosta.mvc.service.PlaceLikeService;
import kosta.mvc.service.ScheduleDetailService;

@Controller
@RequestMapping("/schedule")
public class ScheduleDetailController {
	
	@Autowired
	private ScheduleDetailService scheduleDetailService;
	
	@Autowired
	private MatchBoardService matchBoardService;
	
	@Autowired
	private PlaceLikeService placeLikeService;
	
	@Autowired
	private PlaceBoardService placeBoardService;
	

	@RequestMapping("/read/{matchNo}")
	public ModelAndView scheduleRead(@PathVariable Long matchNo ) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("schedule/schedule-read");
		
		List<ScheduleDetail> scheduleDetailList = scheduleDetailService.selectByMatchNo(matchNo);
		
		
		MatchBoard match = matchBoardService.selectBy(matchNo, false);
		
		List<PlaceLike> placeLikeList = placeLikeService.selectByCustomerNoAndRegionCode(match.getCustomer().getUserId(), match.getRegion().getRegionCode());
				
		Customer writer = match.getCustomer();
		String writerId = writer.getUserId();
		
		mv.addObject("placeLikeList", placeLikeList);
		mv.addObject("scheduleDetailList", scheduleDetailList);
		mv.addObject("matchNo", matchNo);
		mv.addObject("match", match);
		mv.addObject("writerId", writerId);
		
		mv.addObject("localDateTimeFormat", new SimpleDateFormat("hh:mm"));
		 
	
		
		return mv;
	}
	
	@RequestMapping("/getPlaceData")
	@ResponseBody
	public PlaceBoard getPlaceData(HttpServletRequest request) {
		
		String placeNoStr = request.getParameter("placeNo");
		Long placeNo = Long.parseLong(placeNoStr);
					
		PlaceBoard place = placeBoardService.selectBy(placeNo, false);
		
		return place;
	}
	
	@RequestMapping("/insert")
	public ModelAndView insert(String matchBoardNo, String startTime, String endTime, String title, String content, String placeLikeNo) {
		ModelAndView mv = new ModelAndView();
				
		Long matchNoLong = Long.parseLong(matchBoardNo);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		// 문자열 -> Date
		LocalDateTime start = LocalDateTime.parse(startTime, formatter);
		LocalDateTime end = LocalDateTime.parse(endTime, formatter);
		Long placeLikeNoLong = Long.parseLong(placeLikeNo);


		ScheduleDetail sd = ScheduleDetail.builder()
										  .startTime(start)
										  .endTime(end)
										  .title(title)
										  .content(content)
										  .build();
		
		scheduleDetailService.insert(matchNoLong, placeLikeNoLong, sd);
		
		mv.setViewName("redirect:/schedule/read/"+matchNoLong);
		
		return mv;
	}
	
	@RequestMapping("/delete/{id}/{matchNo}")
	public ModelAndView scheduleDelete(@PathVariable Long id, @PathVariable Long matchNo ) {
		ModelAndView mv = new ModelAndView();
		//ScheduleDetail sd = scheduleDetailService.selectById(id);
		
		
		
		//MatchBoard match = sd.getMatchBoard();
		
		mv.setViewName("redirect:/schedule/read/"+matchNo);
		
		scheduleDetailService.deleteByScheduleDetailNo(id);
		
		
		return mv;
	}
}
