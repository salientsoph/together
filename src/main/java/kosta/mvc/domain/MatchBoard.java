package kosta.mvc.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;


import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
//@Table(name="matchBoard")
@Builder
@ToString
public class MatchBoard {
	
	//게시물 번호 : pk
	@Id
	@SequenceGenerator(name="match_no_seq", sequenceName = "match_no_seq", allocationSize = 1) //시퀀스 generator 이름, 시퀀스 이름, 메모리를 통해 할당할 범위 사이즈
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="match_no_seq") //전략은 시퀀스, 시퀀스 generator 이름
	private Long matchNo; 

	//게시물 제목 
	private String matchTitle;
	
	//게시물 내용 
	private String matchContent; 
	
	//게시물 작성일자 
	@CreationTimestamp
	private LocalDateTime matchRegdate;
	
	//게시물 조회수 
	private int matchCount;
	
	//여행 신청 마감날 
	private LocalDate matchRequestLastDate;
	
	//여행 날짜
	private LocalDate tripDate;
	
	//여행 완료 여부 (0: 여행전 / 1: 여행완료)

	@Column(columnDefinition = "number(1) default 0")
	private int tripState;
	
	//희망하는 여행 인원수
	private int matchPeopleNum;
	
	
	//희망하는 여행 연령대
	private int matchAgeGroup;
	
	//희망하는 여행모임 성별 (0: 혼성 / 1: 여성만 / 2: 남성만)
	private int matchGender;


	//일정 상세 리스트 (1:다)
	@OneToMany(mappedBy = "matchBoard" , cascade = CascadeType.ALL )
	private List<ScheduleDetail> scheduleDetailList;
	
	//채팅 메세지 리스트 (1:다)
	@OneToMany(mappedBy = "matchBoard" , cascade = CascadeType.ALL )
	private List<ChatMsg> chatMsgList;
	
	//신고 리스트 (1:다)
	@OneToMany(mappedBy = "matchBoard" , cascade = CascadeType.ALL )
	private List<Report> reportList;

	//게시물 작성자 (아이디) (fk)
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Customer customer;
	
	//여행 지역명 (region_code 이라는 fk 생성) 
	@ManyToOne
	@JoinColumn(name = "region_code")
	private Region region;
	
	//모임신청 테이블 연관 
	@OneToMany(mappedBy = "matchBoard", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<MatchRequest> matchRequestList;
	
	//댓글 테이블 연관
	@OneToMany(mappedBy = "matchBoard", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<MatchReply> replyList; 


}
