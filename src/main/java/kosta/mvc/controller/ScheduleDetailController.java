package kosta.mvc.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.ScheduleDetail;
import kosta.mvc.service.MatchBoardService;
import kosta.mvc.service.PlaceBoardService;
import kosta.mvc.service.PlaceLikeService;
import kosta.mvc.service.ScheduleDetailService;
import lombok.extern.log4j.Log4j;

import org.json.simple.JSONObject;

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
		/*
		System.out.println("***************");
		System.out.println();
		System.out.println(placeLikeList);
		System.out.println();
		System.out.println("***************");
		*/

		mv.addObject("placeLikeList", placeLikeList);
		mv.addObject("scheduleDetailList", scheduleDetailList);
		mv.addObject("matchNo", matchNo);
		mv.addObject("match", match);
		
		mv.addObject("localDateTimeFormat", new SimpleDateFormat("hh:mm"));
		 
	
		
		return mv;
	}
	
	@RequestMapping("/getPlaceData")
	@ResponseBody
	public PlaceBoard getPlaceData(HttpServletRequest request) {
		
		String placeNoStr = request.getParameter("placeNo");
		Long placeNo = Long.parseLong(placeNoStr);
			
		/*
		System.out.println("***************");
		System.out.println();
		System.out.println(placeNo);
		System.out.println();
		System.out.println("***************");
		*/
		
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

		/*
		System.out.println("***************");
		System.out.println();
		System.out.println(matchNoLong);
		System.out.println(start);
		System.out.println(end);
		System.out.println(title);
		System.out.println(content);
		System.out.println(placeLikeNoLong);
		System.out.println();
		System.out.println("***************");
		*/
		
		
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
	
	@RequestMapping("/delete/{id}")
	public ModelAndView scheduleDelete(@PathVariable Long id ) {
		ModelAndView mv = new ModelAndView();
		ScheduleDetail sd = scheduleDetailService.selectById(id);
		MatchBoard match = sd.getMatchBoard();
		
		mv.setViewName("redirect:/schedule/read/"+match.getMatchNo());
		
		scheduleDetailService.deleteByScheduleDetailNo(id);
		
		
		return mv;
	}
}
