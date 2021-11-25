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

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Setter
public class MatchReply {
	@Id
	@SequenceGenerator(name="replyNo_seq", sequenceName = "replyNo_seq", allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="replyNo_seq")
	private String replyNo;
	
	private String replyContent;
	
	@CreationTimestamp
	private LocalDateTime replyDate;
	
	private String secretReply;
	
	@ManyToOne 
	@JoinColumn(name = "rereply_no")
	private MatchReply matchReply;
	
	@ManyToOne 
	@JoinColumn(name = "match_no")
	private MatchBoard matchBoard;
	
	@ManyToOne 
	@JoinColumn(name = "user_id")
	private Customer customer;
}
