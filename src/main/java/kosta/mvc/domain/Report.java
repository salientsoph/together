package kosta.mvc.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

@Entity
public class Report {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "report_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "report_no_seq", allocationSize = 1, name = "report_no_seq") //시퀀스 이름: report_no_seq
	private Long reportNo;
	
	private String reportTitle;
	private String reportContent;
	
	@CreationTimestamp
	private LocalDateTime reportRegdate;
	
	@Column(columnDefinition = "varchar2(30) default '처리중'")
	private String reportStatus;
	
	@ManyToOne
	@JoinColumn(name = "report_reasons_no")//Reply테이블에 report_reasons_no라는 필드 추가되고 fk설정됨.
	private ReportReasons reportReasons;
}
