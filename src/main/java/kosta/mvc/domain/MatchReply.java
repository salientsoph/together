package kosta.mvc.domain;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class MatchReply {
	@Id
	@SequenceGenerator(name="reply_no_seq", sequenceName = "reply_no_seq", allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="reply_no_seq")
	private Long replyNo;
	
	private String replyContent;//댓글 내용
	
	@CreationTimestamp
	private LocalDateTime replyDate;//댓글 작성 날짜
	
	private String secretReply;//비밀댓글 여부
	
	@ManyToOne 
	@JoinColumn(name = "rereply_no")
	private MatchReply matchReply;//대댓글 번호
	
	@OneToMany(mappedBy = "matchReply", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<MatchReply> rereplyNoList = new ArrayList<MatchReply>();
	
	@ManyToOne 
	@JoinColumn(name = "match_no")
	private MatchBoard matchBoard;//매칭게시판 번호
	
	@ManyToOne 
	@JoinColumn(name = "user_id")
	private Customer customer;//사용자 id
}
