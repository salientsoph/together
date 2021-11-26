package kosta.mvc.domain;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class NoticeBoard {
	
	//게시물 번호(pk)
	@Id
	@SequenceGenerator(name="noticeNo_seq", sequenceName = "noticeNo_seq", allocationSize = 1) //시퀀스 generator 이름, 시퀀스 이름, 메모리를 통해 할당할 범위 사이즈
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="noticeNo_seq") //전략은 시퀀스, 시퀀스 generator 이름
	private Long noticeNo;
	
	//게시물 제목 
	private String noticeTitle;
	
	//게시물 내용 
	private String noticeContent;
	
	//게시물 작성일자 
	@CreationTimestamp
	private LocalDateTime noticeRegdate;
	
	//게시물 조회수
	private int noticeCount;
	
	//글쓴이 
	@ManyToOne
	@JoinColumn(name = "admin_id")
	private Admin admin;

}
