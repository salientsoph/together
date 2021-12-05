package kosta.mvc.controller;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.ScheduleDetail;
import kosta.mvc.service.MatchBoardService;
import kosta.mvc.service.ScheduleDetailService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/schedule")
public class ScheduleDetailController {
	
	@Autowired
	private ScheduleDetailService scheduleDetailService;
	
	@Autowired
	private MatchBoardService matchBoardService;
	

	@RequestMapping("/read/{matchNo}")
	public ModelAndView scheduleRead(@PathVariable Long matchNo ) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("schedule/schedule-read");
		
		//List<ScheduleDetail> scheduleDetailList = scheduleDetailService.selectByMatchNo(matchNo);
		//mv.addObject("scheduleDetailList", scheduleDetailList);
		mv.addObject("matchNo", matchNo);
		
		MatchBoard match = matchBoardService.selectBy(matchNo, false);
		
		LocalDate tripDate = match.getTripDate();
		System.out.println();
		  System.out.println("*************************");
		  System.out.println("tripDate : "+tripDate);
		  System.out.println("*************************");
		  System.out.println();
		  mv.addObject("tripDate", tripDate);
		
		return mv;
	}
	
	/*
	  @RequestMapping("/getDb/{matchNo}")	  
	  @ResponseBody 
	  public Map<Long, ScheduleDetail> ajaxGetDB(@PathVariable String matchNo){
		  
		  System.out.println();
		  System.out.println("*************************");
		  System.out.println("matchNo : "+matchNo);
		  System.out.println("*************************");
		  System.out.println();
		  
		 Long no = Long.parseLong(matchNo);
		  
		 List<ScheduleDetail> scheduleDetailList = scheduleDetailService.selectByMatchNo(no);
		  
		  //Gson gson = new Gson();
		 
		 Map<Long, ScheduleDetail> javaMap = new HashMap<Long, ScheduleDetail>();
		 
		 for(ScheduleDetail sd : scheduleDetailList) {
			 javaMap.put(sd.getScheduleDetailNo(), sd);
		 }
				  
		  return javaMap;
	  }
	  */
	
	@RequestMapping("/getDb/{matchNo}")	  
	@ResponseBody 
	public JSONArray ajaxGetDB(@PathVariable String matchNo){
		  
		 
		  
		 Long no = Long.parseLong(matchNo);
		  
		 List<ScheduleDetail> scheduleDetailList = scheduleDetailService.selectByMatchNo(no);
		 
		 
		 for(ScheduleDetail sd : scheduleDetailList) {
			 System.out.println();
			  System.out.println("*************************");
			  System.out.println("sd : "+sd);
			  System.out.println("*************************");
			  System.out.println();
		 }
		 
		 JSONArray mapResult = JSONArray.fromObject(scheduleDetailList);
	        //model.addAttribute("mapResult", mapResult);
		 
		 return mapResult;
	  }
	 
}
