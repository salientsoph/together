package kosta.mvc.domain;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-26
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "placeLike")
public class PlaceLike { 
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "place_like_no_seq") //시퀀스로 따로 관리하자.
	@SequenceGenerator(sequenceName = "place_like_no_seq", allocationSize = 1, name = "place_like_no_seq") //시퀀스 이름: place_like_no_seq
	@Column(name = "place_like_no")
	private Long placeLikeNo; //찜하기 번호
		
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private Customer customer; 
	
	//@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "place_no")
	private PlaceBoard placeBoard;
	
	public PlaceLike(Customer customer, PlaceBoard placeBoard) {
		this.customer = customer;
		this.placeBoard = placeBoard;
	}

}
