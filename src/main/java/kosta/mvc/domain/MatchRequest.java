package kosta.mvc.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

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
public class MatchRequest {
	
	
	@Id
	private Long matchRegisterNo;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Customer customer;
	
	@ManyToOne
	@JoinColumn(name = "match_no")
	private MatchBoard matchBoard; 
	
	//신청한 날짜
	@CreationTimestamp
	private LocalDateTime requestedDate;
	
	@Column(columnDefinition = "number(1) default 0")
	private int requestedState;
	
}
