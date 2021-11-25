package kosta.mvc.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

@Entity
public class FriendRequest {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "frequest_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "frequest_no_seq", allocationSize = 1, name = "frequest_no_seq") //시퀀스 이름: frequest_no_seq
	private Long frequestNo;
	
	private String requestStatus;
	
	@ManyToOne
	@JoinColumn(name = "frequest_list_no")
	private FriendRequestList friendRequestList;
}
