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
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Builder
public class Review {
	@Id
	@SequenceGenerator(name="review_no_seq", sequenceName = "review_no_seq", allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="review_no_seq")
	private Long reviewNo;
	
	private String reviewContent;//리뷰 내용
	private int star;//별점
	
	@CreationTimestamp
	private LocalDateTime reviewRegDate;//리뷰 작성일
	
	@ManyToOne 
	@JoinColumn(name = "place_no")
	private PlaceBoard placeBoard;//게시물 번호
	
	@ManyToOne 
	@JoinColumn(name = "user_id")
	private Customer customer;//id
}
