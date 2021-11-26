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

@Entity
public class ChatMsg {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "chat_msg_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "chat_msg_no_seq", allocationSize = 1, name = "chat_msg_no_seq") //시퀀스 이름: chat_msg_no_seq
	private Long chatMsgNo;
	
	//매칭 게시물 번호
	@ManyToOne
	@JoinColumn(name = "match_no")
	private MatchBoard matchBoard;
	
	//메세지 보낸사람 ID
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Customer customer;
	
	//댓글 내용
	private String chatMsgContent;	
	
	//댓글 작성 시간
	@CreationTimestamp
	private LocalDateTime chatMsgRegdate; 	

}
