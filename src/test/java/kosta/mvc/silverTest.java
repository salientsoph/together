package kosta.mvc;


import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.annotation.Commit;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.util.Assert;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

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
class silverTest {
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
	}

	@DisplayName("찜하기 취소")
	@Test
	public void testlikeDeleteByPlaceLikeNo() {
		placeLikeRep.deleteById(2L);
	}

	@DisplayName("userId 에 해당하는 찜하기 조회 테스트")
	@Test
	void testLikeSelectByUserId() {
		Customer customer = customerRep.findById("jang").orElse(null);
		
		List<PlaceLike> list = placeLikeRep.findByCustomer(customer);
		
		System.out.println("개수 : " + list.size());
		
		list.forEach(b->System.out.println(b));	
	}

	@DisplayName("찜하기 중복 테스트 - fail")
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

	@DisplayName("찜하기 카운트")
	@Test
	public void testGetCount() throws Exception {
		//given
		PlaceBoard place = addPlace();

		//when
		mockMvc.perform(get(API_URL + LIKE_URL + "/" + place.getPlaceLikedCount()))
		.andExpect(status().isOk());
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



}
