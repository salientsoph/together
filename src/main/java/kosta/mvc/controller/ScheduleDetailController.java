package kosta.mvc.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
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
		
		mv.addObject("localDateTimeFormat", new SimpleDateFormat("hh:mm"));
		 
	
		
		return mv;
	}
	
	/*
	@RequestMapping("/getPlaceData")
	@ResponseBody
	public JSONObject getPlaceData(HttpServletRequest request) {
		
		String placeNoStr = request.getParameter("placeNo");
		Long placeNo = Long.parseLong(placeNoStr);
				
		PlaceBoard place = placeBoardService.selectBy(placeNo, false);
		
		
		JSONObject jsonObj = new JSONObject();
		
		jsonObj.put("place", place);
		
		return jsonObj;
	}
	*/
	/*
	@RequestMapping("/getPlaceData")
	@ResponseBody
	public String getPlaceData(HttpServletRequest request) {
		
		String placeNoStr = request.getParameter("placeNo");
		Long placeNo = Long.parseLong(placeNoStr);
				
		PlaceBoard place = placeBoardService.selectBy(placeNo, false);
		
		String content = place.getPlaceContent();
		
		return content;
	}
	*/
	@RequestMapping("/getPlaceData")
	@ResponseBody
	public PlaceBoard getPlaceData(HttpServletRequest request) {
		
		String placeNoStr = request.getParameter("placeNo");
		Long placeNo = Long.parseLong(placeNoStr);
				
		System.out.println("***************");
		System.out.println();
		System.out.println(placeNo);
		System.out.println();
		System.out.println("***************");
		
		PlaceBoard place = placeBoardService.selectBy(placeNo, false);
		
		return place;
	}
	
	
}
