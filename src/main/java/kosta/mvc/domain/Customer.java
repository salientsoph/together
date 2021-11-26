package kosta.mvc.domain;

import java.util.List;

import javax.persistence.CascadeType;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import javax.persistence.OneToMany;


import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Setter
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String userId;
	
	private String userPwd;
	private String userName;
	private String userNickname;
	private String userEmail;
	private int userPhone;
	private String userGender;
	private int userAge;

	
	//채팅 메세지 ( 1:다 )
	@OneToMany(mappedBy = "customer" , cascade = CascadeType.ALL )
	private List<ChatMsg> chatMsgList;
	
	//신고 게시물 리스트 ( 1:다 )
	@OneToMany(mappedBy = "customer" , cascade = CascadeType.ALL )
	private List<Report> reportList;


	
	@OneToMany(mappedBy = "customer", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<MatchBoard> matchBoardList;
	
	@OneToMany(mappedBy = "customer", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<MatchRequest> matchRequestList;
	

}
