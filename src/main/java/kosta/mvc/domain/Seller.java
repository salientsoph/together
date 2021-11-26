package kosta.mvc.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Setter
public class Seller {
	
	//아이디
	@Id
	private String sellerId;
	
	//비밀번호
	private String sellerPwd;
	
	//이름
	private String sellerName;
	
	//닉네임
	private String sellerNickname;
	
	//이메일
	private String sellerEmail;
	
	//전화번호
	private String sellerPhone;
	
	//사업자 등록 번호
	private int sellerRegisterNumber;

	
	//지역 (다 : 1)
	@ManyToOne
	@JoinColumn(name = "region_code")
	private Region region;

}
