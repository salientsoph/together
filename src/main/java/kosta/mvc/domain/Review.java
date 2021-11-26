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
public class Review {
	@Id
	@SequenceGenerator(name="reviewNo_seq", sequenceName = "reviewNo_seq", allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="reviewNo_seq")
	private Long reviewNo;
	
	private String reviewContent;
	private int star;
	
	@CreationTimestamp
	private LocalDateTime reviewRegDate;
	
	@ManyToOne 
	@JoinColumn(name = "place_no")
	private PlaceBoard placeBoard;
	
	@ManyToOne 
	@JoinColumn(name = "user_id")
	private Customer customer;
}
