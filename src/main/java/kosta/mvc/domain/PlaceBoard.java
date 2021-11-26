package kosta.mvc.domain;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
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
public class PlaceBoard {

	//게시물 번호(pk)
	@Id
	@SequenceGenerator(name="placeNo_seq", sequenceName = "placeNo_seq", allocationSize = 1) //시퀀스 generator 이름, 시퀀스 이름, 메모리를 통해 할당할 범위 사이즈
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="placeNo_seq") //전략은 시퀀스, 시퀀스 generator 이름
	private Long placeNo;
	
	//게시물 작성자(사업자) 아이디
	private String sellerId;
	
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
	@OneToMany(mappedBy = "placeBoard" , cascade = CascadeType.ALL )
	private List<ScheduleDetail> scheduleDetailList;
}
