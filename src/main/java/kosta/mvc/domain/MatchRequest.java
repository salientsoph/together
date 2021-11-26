package kosta.mvc.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

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
	@SequenceGenerator(name="match_register_no_seq", sequenceName = "match_register_no_seq", allocationSize = 1) //시퀀스 generator 이름, 시퀀스 이름, 메모리를 통해 할당할 범위 사이즈
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="match_register_no_seq") //전략은 시퀀스, 시퀀스 generator 이름
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
