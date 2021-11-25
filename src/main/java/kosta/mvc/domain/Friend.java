package kosta.mvc.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class Friend {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "friend_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "friend_no_seq", allocationSize = 1, name = "friend_no_seq") //시퀀스 이름: friend_no_seq
	private Long friend_no;
	
	@ManyToOne
	@JoinColumn(name = "flist_no")//Reply테이블에 chat_no라는 필드 추가되고 fk설정됨.
	private FriendsList friendsList;
}
