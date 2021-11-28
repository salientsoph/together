package kosta.mvc.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.management.RuntimeErrorException;

import org.springframework.stereotype.Service;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.ScheduleDetail;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.ScheduleDetailRepository;

@Service
public class ScheduleDetailServiceImpl implements ScheduleDetailService {
	
	ScheduleDetailRepository scheduleDetailRep;
	
	MatchBoardRepository matchBoardRep;
	
	PlaceBoardRepository placeBoardRep;

	@Override
	public List<ScheduleDetail> selectByMatchNo(Long matchNo) {
		MatchBoard match = matchBoardRep.findById(matchNo).orElse(null);
		
		if(match==null) {
			throw new RuntimeException("해당 매칭을 찾을 수 없습니다.");
		}
		
		List<ScheduleDetail> list = scheduleDetailRep.selectByMatchNo(match);
		
		return list;
	}

	@Override
	public void insert(Long matchNo, Long placdNo, ScheduleDetail scheduleDetail) {
		
		String title = ""; 	//제목
		String content = "";//내용
		
		MatchBoard match = matchBoardRep.findById(matchNo).orElse(null);
		if(match==null) {
			throw new RuntimeException("해당 매칭을 찾을 수 없습니다.");
		}
		
		PlaceBoard place = placeBoardRep.findById(placdNo).orElse(null);
		if(place==null) { 
			throw new RuntimeException("해당 장소를 찾을 수 없습니다.");
		}
		
		if(placdNo==null) { //장소 번호가 안들어왔다면...
			title = scheduleDetail.getTitle();		//스케줄 디테일 객체에서 제목이랑
			content = scheduleDetail.getContent();	//내용 가져옴.
		}else {				//장소 번호가 들어왔었다면...
			title = place.getPlaceTitle();			//장소 객체에서 제목이랑
			content = place.getPlaceContent();		//내용 가져옴.
		}
		
		/*
		//갖고온게 00:00:00처럼 생긴 스트링 값일 경우
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		String start = "14:30:00";
		String end = "16:45:00";
		LocalDateTime startTime = LocalDateTime.parse(match.getTripDate().toString() + " " + start, formatter);
		LocalDateTime endTime = LocalDateTime.parse(match.getTripDate().toString() + " " + end, formatter);
		*/
		
		LocalDateTime startTime = scheduleDetail.getStartTime();
		LocalDateTime endTime = scheduleDetail.getEndTime();
		
		scheduleDetailRep.save(ScheduleDetail.builder() 
											.matchBoard(match)
											.placeBoard(place) 
											.startTime(startTime) 
											.endTime(endTime)
											.title(title) 
											.content(content) 
											.build());

	}

	@Override
	public void update(Long oldScheduleDetailNo, ScheduleDetail newSchedule) {
		ScheduleDetail oldSchedule = scheduleDetailRep.findById(oldScheduleDetailNo).orElse(null);
		if(oldSchedule == null) {
			throw new RuntimeException("해당 일정을 찾을 수 없습니다.");
		}
		
		/*
		MatchBoard match = oldSchedule.getMatchBoard();
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		String start = "20:15:00";
		String end = "21:35:00";
		LocalDateTime startTime = LocalDateTime.parse(match.getTripDate().toString() + " " + start, formatter);
		LocalDateTime endTime = LocalDateTime.parse(match.getTripDate().toString() + " " + end, formatter);
		*/
		
		oldSchedule.setStartTime(newSchedule.getStartTime());
		oldSchedule.setEndTime(newSchedule.getEndTime());

	}

	@Override
	public void deleteByScheduleDetailNo(Long scheduleDetailNo) {
		scheduleDetailRep.deleteById(scheduleDetailNo);

	}

}
