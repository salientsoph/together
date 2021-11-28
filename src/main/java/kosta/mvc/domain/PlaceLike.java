package kosta.mvc.domain;

import java.util.List;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-26
 */
@Entity
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "placeLike")
	public class PlaceLike { 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "place_like_no")
	private Long no; //찜하기 번호
		
	@ManyToOne(fetch = FetchType.LAZY)
	private Customer customer; 
	
	@ManyToOne(fetch = FetchType.LAZY)
	private PlaceBoard placeBoard;
	
	public PlaceLike(Customer customer, PlaceBoard placeBoard) {
		this.customer = customer;
		this.placeBoard = placeBoard;
	}

}
