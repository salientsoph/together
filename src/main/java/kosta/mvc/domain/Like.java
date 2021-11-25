package kosta.mvc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-25
 */
@Entity
@NoArgsConstructor
@Getter
@Setter
@Table(name = "Likelist")
public class Like { 
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "LIKE_NO")
	private Long no; //찜 번호
		
	@ManyToOne
	private Customer customer; 
	
	@ManyToOne
	private PlaceBoard PlaceBoard;
	
//	장소게시판에는 이렇게??
//	@OneToMany(mappedBy = "placeBoard", cascade = CascadeType.ALL)
//  Set<Like> likes = new HashSet<>();

	public Like(Customer customer, PlaceBoard placeBoard) {
		this.customer = customer;
		this.placeBoard = placeBoard;
	}
}
