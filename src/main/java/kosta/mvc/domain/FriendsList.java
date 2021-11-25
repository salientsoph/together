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
public class FriendsList {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "flist_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "flist_no_seq", allocationSize = 1, name = "flist_no_seq") //시퀀스 이름: flist_no_seq
	private Long flistNo;
	
	@OneToMany(mappedBy = "friendsList", cascade = CascadeType.ALL)
	private List<Friend> friendList;

}
