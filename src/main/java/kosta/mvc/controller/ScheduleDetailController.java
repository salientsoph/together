package kosta.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.mvc.domain.ScheduleDetail;
import kosta.mvc.service.ScheduleDetailService;

@Controller
@RequestMapping("/schedule")
public class ScheduleDetailController {
	
	@Autowired
	private ScheduleDetailService scheduleDetailService;
	

	@RequestMapping("/read/{matchNo}")
	public ModelAndView scheduleRead(@PathVariable Long matchNo ) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("schedule/schedule-read");
		
		List<ScheduleDetail> scheduleDetailList = scheduleDetailService.selectByMatchNo(matchNo);
		
		mv.addObject("scheduleDetailList", scheduleDetailList);
		
		return mv;
	}
}
