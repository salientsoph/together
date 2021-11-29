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

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Setter
@Getter

public class Report {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "report_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "report_no_seq", allocationSize = 1, name = "report_no_seq") //시퀀스 이름: report_no_seq
	private Long reportNo;
	
	//신고 제목
	private String reportTitle;
	//신고 내용
	private String reportContent;
	
	//작성일자
	@CreationTimestamp
	private LocalDateTime reportRegdate;
	
	//처리상태 (기본값: 처리중)
	@Column(columnDefinition = "varchar2(30) default '처리중'")
	@Builder.Default
	private String reportStatus = "처리중";
	
	//신고사유 번호 ( 다:1 )
	@ManyToOne
	@JoinColumn(name = "report_reasons_no")
	private ReportReasons reportReasons;
	
	//작성자 ID ( 다:1 )
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Customer customer;

	//참고용 매칭 게시물 번호 ( 다:1 )
	@ManyToOne
	@JoinColumn(name = "match_no")
	private MatchBoard matchBoard;
	
	
	
}
