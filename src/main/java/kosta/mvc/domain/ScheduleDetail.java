package kosta.mvc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class ScheduleDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "schedule_detail_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "schedule_detail_no_seq", allocationSize = 1, name = "schedule_detail_no_seq") //시퀀스 이름: schedule_no_seq
	private Long scheduleDetailNo;
	
	@Temporal(TemporalType.TIME) //시간 ( 시:분:초 )
 	private Date startTime;
	
	@Temporal(TemporalType.TIME) //시간 ( 시:분:초 )
 	private Date endTime;
	
	private String title; 	//제목
	private String content; //내용
	
	//매칭 게시물 번호
	@ManyToOne
	@JoinColumn(name = "match_no")
	private MatchBoard matchBoard;
	
	//장소 게시물 번호
	@ManyToOne
	@JoinColumn(name = "place_no")
	private PlaceBoard placeBoard;
}
