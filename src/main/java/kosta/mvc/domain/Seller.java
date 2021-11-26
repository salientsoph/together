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
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String sellerId;
	
	private String sellerPwd;
	private String sellerName;
	private String sellerNickname;
	private String sellerEmail;
	private int sellerPhone;
	private int sellerRegisterNumber;

	
	
	@ManyToOne
	@JoinColumn(name = "region_code")
	private int regionCode;

}
