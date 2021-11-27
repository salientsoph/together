package kosta.mvc.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.ToString;

@Entity
@ToString
public class ReportReasons {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "report_reasons_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "report_reasons_no_seq", allocationSize = 1, name = "report_reasons_no_seq") //시퀀스 이름: report_reasons_no_seq
	private Long reportReasonsNo;
	
	//신고 사유 제목 
	private String reportTitle;
	
	//신고 사유 내용
	private String reportContent;
	
	//신고 게시물 리스트 ( 1:다 - 부모 )
	//@OneToMany(mappedBy = "reportReasons")
	//private List<Report> reportList;
}
