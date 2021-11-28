package kosta.mvc.service;

import java.time.LocalDateTime;
import java.util.List;

import kosta.mvc.domain.ScheduleDetail;

public interface ScheduleDetailService {
	
	/**
	 * 매칭 게시판별 스케줄 가져오기
	 *  매칭게시판 번호 필요
	 * */
	List<ScheduleDetail> selectByMatchNo(Long matchNo);
	
	/**
	 * 새로운 스케줄 입력하기
	 *  매칭게시판 번호 (어느 매칭게시판에 넣을지 알아야 하니까)
	 *  장소게시판 번호 (무슨 장소를 넣을지 알아야 하니까)
	 *  ScheduleDetail 객체 (제목, 내용, 시작시간, 끝나는시간)
	 *  필요함.
	 *  장소게시판 번호가 없으면...
	 *   스케줄 제목, 스케줄 내용 필요함.
	 * */
	void insert(Long matchNo, Long placdNo, ScheduleDetail scheduleDetail);
	
	/**
	 * 스케줄 업데이트하기
	 *  스케줄 번호 (어느 스케줄을 변경할지 찾아야 하니까)
	 *  ScheduleDetail 객체 (어떤 내용으로 변경할지)
	 *  필요함.
	 * */
	void update(Long oldScheduleDetailNo, ScheduleDetail newSchedule);
	
	/**
	 * 스케줄 삭제하기
	 *  스케줄 번호 (어느 스케줄을 삭제할지 알아야 하니까)
	 *  필요함.
	 * */
	void deleteByScheduleDetailNo(Long scheduleDetailNo);
}
