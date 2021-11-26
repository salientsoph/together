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
	
	private String chatMsgContent;	//댓글 내용
	
	@CreationTimestamp
	private LocalDateTime chatMsgRegdate; 	//댓글 작성 시간
	
	@ManyToOne
	@JoinColumn(name = "chat_no")//Reply테이블에 chat_no라는 필드 추가되고 fk설정됨.
	private Chat chat;

}
