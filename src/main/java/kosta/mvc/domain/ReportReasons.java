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

@Entity
public class ReportReasons {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "report_reasons_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "report_reasons_no_seq", allocationSize = 1, name = "report_reasons_no_seq") //시퀀스 이름: report_reasons_no_seq
	private Long reportReasonsNo;
	
	private String reportTitle;
	
	private String reportContent;
	
	@OneToMany(mappedBy = "reportReasons")
	private List<Report> reportList;
}
