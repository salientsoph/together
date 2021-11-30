package kosta.mvc;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.PlaceLikeRepository;

@Transactional
@AutoConfigureMockMvc
@SpringBootTest
@Commit
class SilverTest {

	@Autowired
	private CustomerRepository customerRep;

	@Autowired
	public PlaceBoardRepository placeBoardRep;

	@Autowired
	public PlaceLikeRepository placeLikeRep; 

	/**
	 * 찜하기 버튼을 처음 누른 경우 → 내역 저장
	 * 찜하기 버튼을 누른 상태에서 한 번 더 누른 경우 → 내역 삭제
	 * 특정 게시글을 찜하기 개수 가져오기
	 * 내가 찜하기한 게시글과 내 정보로 찜하기 내역을 가져오기
	 */
	
	/**
	 * 찜하기 클릭
	 * 1. insert - placelike 테이블 (누가, 어떤 장소번호)
	 * 2. update - plakce_board - place_liked_count 증가
	 */
	@DisplayName("찜하기 등록 테스트")
	@Test
	public void testCreateLike() throws Exception {
		
		PlaceBoard placeBoard = placeBoardRep.findById(5L).orElse(null);//찜하기를 클릭한 장소에 대한 정보 
		
		Customer customer= Customer.builder().userId("rhg20").build();//누가 찜하기를 클릭했는지에 대한 정보
		
		placeLikeRep.save(PlaceLike.builder().customer(customer).placeBoard(placeBoard).build());
		
		placeBoard.setPlaceLikedCount(placeBoard.getPlaceLikedCount()+1);
	}

	/**
	 * 찜하기 버튼을 누른 상태에서 한 번 더 누른 경우 → 내역 삭제
	 * 1. delete - placelike 테이블 (누가, 어떤 장소번호)
	 * 2. update - place_board - place_liked_count 감소
	 */
	@DisplayName("찜하기 취소")
	@Test
	public void testDeleteLike() {

		PlaceBoard placeBoard = placeBoardRep.findById(1L).orElse(null);
		
		Customer customer = Customer.builder().userId("kim").build();

		placeLikeRep.delete(PlaceLike.builder().customer(customer).placeBoard(placeBoard).build());

		placeBoard.setPlaceLikedCount(placeBoard.getPlaceLikedCount()-1);
	}


	@DisplayName("찜하기 중복 테스트 - fail")
	@Test
	void testDuplicateLike() throws Exception {

	}
	
	@DisplayName("특정 게시글의 좋아요 개수")
	@Test
    void testPlaceCounting() {
		
	}
	
	@DisplayName("내가 찜한 게시글과 내 정보로 찜한 내역 가져오기")
	@Test
	void testLikeSelectByUserId() {

		Customer jang = customerRep.findById("jang").orElse(null);
		
		List<PlaceLike> list = jang.getPlaceLikeList();
		
		System.out.println("개수 : " + list.size());
		
		list.forEach(b->System.out.println(b));	
	}
	
/**	
 	@DisplayName("장소 등록 테스트")
	@Test
	public void placeInsert() {

		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller01")) //셀러 아이디가 seller01 인놈
					.region(regionRep.getById(2)) 	//리전 넘버가 2번 (경기/인천)
					.placeTitle("경기도"+i)
					.placeContent("경기도핫플"+i)
					.placeCategory(0)
					.build());
		}
		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller02")) //셀러 아이디가 seller01 인놈
					.region(regionRep.getById(3)) 	//리전 넘버가 3번 (부산/경남)
					.placeTitle("부울경"+i)
					.placeContent("부울경뷰맛집"+i)
					.placeCategory(2)
					.build());
		}
		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller03")) //셀러 아이디가 seller01 인놈
					.region(regionRep.getById(4)) 	//리전 넘버가 3번 (대전/충청)
					.placeTitle("대전오세유"+i)
					.placeContent("빵지순례"+i)
					.placeCategory(2)
					.build());
		}
		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller03")) //셀러 아이디가 seller01 인놈
					.region(regionRep.getById(4)) 	//리전 넘버가 4번 (대전/충청)
					.placeTitle("대전오세유"+i)
					.placeContent("빵지순례"+i)
					.placeCategory(0)
					.build());
		}
		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller03")) //셀러 아이디가 seller01 인놈
					.region(regionRep.getById(5)) 	//리전 넘버가 4번 (대구/경북)
					.placeTitle("혹시야구좋아하세요"+i)
					.placeContent("라이온즈파크"+i)
					.placeCategory(2)
					.build());
		}
		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller03")) //셀러 아이디가 seller01 인놈
					.region(regionRep.getById(6)) 	//리전 넘버가 6번 (광주/전라)
					.placeTitle("여수밤바다"+i)
					.placeContent("야경맛집"+i)
					.placeCategory(1) //(0: 맛집 / 1: 관광지 / 2: 액티비티)
					.build());
		}
		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller03")) //셀러 아이디가 seller03 인놈
					.region(regionRep.getById(6)) 	//리전 넘버가 7번 (강원/제주)
					.placeTitle("바닷마을다이어리"+i)
					.placeContent("파도소리"+i)
					.placeCategory(1) //(0: 맛집 / 1: 관광지 / 2: 액티비티)
					.build());
		}
		for(int i=0; i<=10 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller04")) //셀러 아이디가 seller04 인놈
					.region(regionRep.getById(1)) 	//리전 넘버가 1번 (서울)
					.placeTitle("서울맛집"+i)
					.placeContent("미슐랭"+i)
					.placeCategory(0)
					.build());
		}
		for(int i=0; i<=11 ; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller04")) //셀러 아이디가 seller05 인놈
					.region(regionRep.getById(7)) 	//리전 넘버가 1번 (서울)
					.placeTitle("하늘을날다"+i)
					.placeContent("패러글라이딩"+i)
					.placeCategory(2)
					.build());
		}
	}
**/


}
