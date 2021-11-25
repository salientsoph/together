package kosta.mvc.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;


@Entity
public class Chat {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "chat_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "chat_no_seq", allocationSize = 1, name = "chat_no_seq") //시퀀스 이름: chat_no_seq
	private Long chatNo; 
	
	//글하나-댓글여럿 -> 1:다 (기본값=지연로딩)
	@OneToMany(mappedBy = "chat", cascade = CascadeType.ALL)
	private List<ChatMsg> chatMsgList;

}
