package kosta.mvc.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

@Entity
public class Schedule {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "schedule_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "schedule_no_seq", allocationSize = 1, name = "schedule_no_seq") //시퀀스 이름: schedule_no_seq
	private Long scheduleNo;
	
	@OneToMany(mappedBy = "schedule")
	private List<ScheduleDetail> scheduleDetailList;
}
