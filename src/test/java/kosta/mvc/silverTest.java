package kosta.mvc;

import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.CoreMatchers.equalTo;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.web.servlet.MockMvc;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.PlaceLikeRepository;
import kosta.mvc.repository.RegionRepository;
import kosta.mvc.repository.SellerRepository;

@Transactional
@AutoConfigureMockMvc
@SpringBootTest
@Commit
class SilverTest {
	
	/**
	 * 찜하기 버튼을 처음 누른 경우 → 내역 저장
	 * 찜하기 버튼을 누른 상태에서 한 번 더 누른 경우 → 내역 삭제
	 * 특정 게시글을 찜하기 개수 가져오기
	 * 내가 찜하기한 게시글과 내 정보로 찜하기 내역을 가져오기
	 */
	
	private final String LIKE_URL = "/like";
	private final String USER_ID = "kim";
	private final String USER_PWD = "1234";
	private final String API_URL = "/api";

	@Autowired
	protected MockMvc mockMvc;

	@Autowired
	private CustomerRepository customerRep;

	@Autowired
	private RegionRepository regionRep;

	@Autowired
	private SellerRepository sellerRep;

	@Autowired
	public PlaceBoardRepository placeBoardRep;

	@Autowired
	public MatchBoardRepository matchBoardRep;

	@Autowired
	public PlaceLikeRepository placeLikeRep; 

	private PlaceBoard placeBoard;
	private Customer customer;
	private PlaceLike placeLike;

	@DisplayName("찜하기 등록 테스트")
	@Test
	public void testlikeInsert() {
		for(int i=0; i<=10 ; i++) {
			Customer jang = customerRep.findById("jang").orElse(null);
			PlaceBoard board = placeBoardRep.findById(1L+i).orElse(null);

			placeLikeRep.save(PlaceLike.builder()
					.customer(jang)
					.placeBoard(board)
					.build());
		}
		for(int i=0; i<=7 ; i++) {
			Customer kim = customerRep.findById("kim").orElse(null);
			PlaceBoard board = placeBoardRep.findById(1L+i).orElse(null);

			placeLikeRep.save(PlaceLike.builder()
					.customer(kim)
					.placeBoard(board)
					.build());
		}
	}

	@DisplayName("찜하기 취소")
	@Test
	public void testlikeDeleteByPlaceLikeNo() {

		Customer jang = customerRep.findById("jang").orElse(null);
		PlaceBoard board = placeBoardRep.findById(1L).orElse(null);

		placeLikeRep.deleteById(2L);
	}
	
	@DisplayName("내가 찜한 게시글과 내 정보로 찜한 내역 가져오기")
	@Test
	void testLikeSelectByUserId() {

		Customer jang = customerRep.findById("jang").orElse(null);
		
		List<PlaceLike> list = placeLikeRep.findByCustomer(customer);
		
		System.out.println("개수 : " + list.size());
		
		list.forEach(b->System.out.println(b));	
	}

	@Test
	@DisplayName("특정 장소게시글의 찜하기 개수를 가져온다.")
	void place_counting_test() {
		int placeLikedCount = getPlaceLikeCount();
		
		PlaceBoard newPlace = PlaceBoard.builder()
				.seller(sellerRep.getById("seller01")) //셀러 아이디가 seller01 
				.region(regionRep.getById(2)) 	//리전 넘버가 2번 (경기/인천)
				.placeTitle("오리역")
				.placeContent("드라이브")
				.placeLikedCount(0)
				.placeCategory(1)
				.build();	
		insertPlaceLike(newPlace, placeLikedCount);
		
		Optional<Integer> findCount = placeLikeRep.countByPlaceBoard(newPlace);
		
//		assertThat(findCount, equalTo(placeLikedCount)); 
	}
	
	private int getPlaceLikeCount() {
		int max = (int) customerRep.count() - 1;
		return (int) (Math.random() * (max)) + 1;
	}
	
	private void insertPlaceLike(PlaceBoard newPlace, int placeLikedCount) {
		placeBoardRep.save(newPlace);
		List<Customer> customers = customerRep.findAll().stream().filter(user -> user.equals(customer) == false).collect(Collectors.toList());
		for(int i = 0; i < placeLikedCount; ++i) {
//			placeLikeRep.save(PlaceLike.builder().customer(customer.get(i)).palce(newPlace).build());
		}
	}

	
	
	@DisplayName("찜하기 삭제")
	@Test
	public void delete_test() {
		placeLikeRep.save(placeLike);
		
		placeLikeRep.delete(placeLike);
		Optional<PlaceLike> deletedLike = placeLikeRep.findById(placeLike.getPlaceLikeNo());
		
		//assertThat(deletedLike.isPresent(), equals(false));
	}

/**
	@DisplayName("찜하기 중복 테스트 - fail")////////////////테스트중///////////
	@WithMockUser
	@Test
	void testDuplicateLike() throws Exception {
		//given
		PlaceBoard place = addPlace();

		//when
		mockMvc.perform(post(API_URL + LIKE_URL + "/" + place.getPlaceNo()))
		.andExpect(status().isOk());

		mockMvc.perform(post(API_URL + LIKE_URL + "/" + place.getPlaceNo()))
		.andExpect(status().isBadRequest());

		//then
		PlaceLike like = placeLikeRep.findAll().get(0);

		Assert.notNull(like);
		Assert.notNull(like.getCustomer().getUserId());
		Assert.notNull(like.getPlaceBoard().getPlaceNo());
	}
	private PlaceBoard addPlace() {
		PlaceBoard place = PlaceBoard.builder()
				.seller(sellerRep.getById("seller01")) //셀러 아이디가 seller01 인놈
				.region(regionRep.getById(2)) 	//리전 넘버가 2번 (경기/인천)
				.placeTitle("남양주시두물머리")
				.placeContent("서울 인근 드라이브")
				.placeLikedCount(0)
				.placeCategory(1)
				.build();	

		PlaceBoard save = placeBoardRep.save(place);

		return save;
	}
**/
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
