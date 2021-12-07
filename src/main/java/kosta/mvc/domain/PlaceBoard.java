package kosta.mvc.domain;

import java.time.LocalDateTime;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PlaceBoard {

	//게시물 번호(pk)
	@Id
	@SequenceGenerator(name="place_no_seq", sequenceName = "place_no_seq", allocationSize = 1) //시퀀스 generator 이름, 시퀀스 이름, 메모리를 통해 할당할 범위 사이즈
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="place_no_seq") //전략은 시퀀스, 시퀀스 generator 이름
	private Long placeNo;
	
	//게시물 작성자(사업자) 아이디
	@ManyToOne
	@JoinColumn(name = "seller_id")
	private Seller seller;
	
	//지역명
	@ManyToOne
	@JoinColumn(name = "region_code")
	private Region region;
  
	//지역명
	private String regionName;
	
	//게시물 제목
	private String placeTitle;
	
	//게시물 내용 
	private String placeContent;
	
	//게시물 작성일자 
	@CreationTimestamp
	private LocalDateTime placeRegdate;
	
	//게시물 조회수
	private int placeCount; 
	
	//관심받은 수
	private int placeLikedCount;
	
	//카테고리 분류(0: 맛집 / 1: 관광지 / 2: 액티비티)
	private int placeCategory;
	
	//게시물 사진(사진1) 
	private String placeImage;
	
	//게시물 상세 사진(사진2)
	private String placeDetailImage;

	
	//일정 상세 (1:다)
	///@JsonIgnore
	@OneToMany(mappedBy = "placeBoard" , cascade = CascadeType.ALL )
	private List<ScheduleDetail> scheduleDetailList;


	//리뷰 테이블 연관
	//@JsonIgnore
	@OneToMany(mappedBy = "placeBoard", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<Review> reviewList; 

	
	//관심장소(찜하기) 테이블 연관 - 은솔추가 
	//@JsonIgnore
	@OneToMany(mappedBy = "placeBoard", cascade = CascadeType.ALL)
//	Set<PlaceLike> likes = new HashSet<>();
	private List<PlaceLike> placeLikeList;

}
