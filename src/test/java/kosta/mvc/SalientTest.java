package kosta.mvc;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.MatchRequest;
import kosta.mvc.domain.NoticeBoard;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Review;
import kosta.mvc.repository.AdminRepository;
import kosta.mvc.repository.AdminRepository;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.MatchRequestRepository;
import kosta.mvc.repository.NoticeBoardRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.RegionRepository;
import kosta.mvc.repository.SellerRepository;
import kosta.mvc.service.MatchRequestService;

@SpringBootTest
@Transactional
@Commit
public class SalientTest {
	
	
	@Autowired
	private SellerRepository sellerRep;
	
	@Autowired
	private CustomerRepository customerRep;
	
	@Autowired
	private AdminRepository adminRep;
	
	@Autowired
	private NoticeBoardRepository noticeRep;
	
	@Autowired
	private PlaceBoardRepository placeBoardRep;
	
	@Autowired
	private RegionRepository regionRep;
	
	@Autowired
	private MatchBoardRepository matchBoardRep;

	@Autowired
	private MatchRequestRepository requestRep;
	
	
	@Autowired
	private MatchRequestService matchRequestService;
	
	
	/**공지사항 test*/
	@Test
	public void noticeInsert() {
		for(int i = 11; i <= 30; i++) {
			noticeRep.save(NoticeBoard.builder()
					.noticeTitle("공지사항 " + i + "번째 게시물")
					.noticeContent("내용없음")
					.admin(adminRep.getById("admin"))
					.build());
		}
	}
	
	@Test
	public void selectAllNotice() {
		List<NoticeBoard> notice = noticeRep.findAll();
		System.out.println("개수 : " + notice.size());
		notice.forEach(b->System.out.println(b.getNoticeTitle() + b.getNoticeContent()));	
	}
	
	@Test
	public void updateNotice() {
		NoticeBoard notice = noticeRep.findById(1L).orElse(null);
		notice.setNoticeContent("수정된 내용");
		notice.setNoticeTitle("수정된 제목");
	}
	
	@Test
    public void deleteNotice() {
		noticeRep.deleteById(1L);
	}

	
	/**장소게시판 test*/
	@Test
	public void placeInsert() {
		for(int i = 1; i <= 3; i++) {
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller01")) 
												.region(regionRep.getById(1)) 	
												.placeTitle("서울맛집 " + i + "번째 게시물")
												.placeContent("맛집이에요~")
												.placeCategory(0)
												.build());
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller02")) 
					.region(regionRep.getById(2)) 	
					.placeTitle("경기 맛집 " + i + "번째 게시물")
					.placeContent("맛집이에요~")
					.placeCategory(0)
					.build());
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller03")) 
					.region(regionRep.getById(3)) 	
					.placeTitle("부산 맛집 " + i + "번째 게시물")
					.placeContent("맛집이에요~")
					.placeCategory(0)
					.build());
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller04")) 
					.region(regionRep.getById(4)) 	
					.placeTitle("대전 맛집 " + i + "번째 게시물")
					.placeContent("맛집이에요~")
					.placeCategory(0)
					.build());
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller05")) 
					.region(regionRep.getById(5)) 	
					.placeTitle("대구 맛집 " + i + "번째 게시물")
					.placeContent("맛집이에요~")
					.placeCategory(0)
					.build());
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller01")) 
					.region(regionRep.getById(6)) 	
					.placeTitle("광주 맛집 " + i + "번째 게시물")
					.placeContent("맛집이에요~")
					.placeCategory(0)
					.build());
			placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller02")) 
					.region(regionRep.getById(7)) 	
					.placeTitle("강원 맛집 " + i + "번째 게시물")
					.placeContent("맛집이에요~")
					.placeCategory(0)
					.build());
			}
		}
	
	@Test
	public void selectAllPlace() {
		List<PlaceBoard> place = placeBoardRep.findAll();
		System.out.println("개수 : " + place.size());
		place.forEach(b->System.out.println(b.getPlaceTitle() + b.getPlaceContent()));	
	}
	
	@Test
	public void updatePlace() {
		PlaceBoard notice = placeBoardRep.findById(2L).orElse(null);
		notice.setPlaceContent("수정된 내용");
		notice.setPlaceTitle("수정된 제목");
	}
	
	@Test
    public void deletePlace() {
		placeBoardRep.deleteById(141L);
	}
	
	
	/**매칭게시판 test*/
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	
	@Test
	public void insertMatch() {
		matchBoardRep.save(MatchBoard.builder()
				.matchTitle("가자가자~~")
				.matchContent("고기 짱맛있음")
				.matchRequestLastDate( LocalDate.parse("2021-12-01", formatter) )
				.tripDate(LocalDate.parse("2021-12-11", formatter))
				.matchPeopleNum(3)
				.matchAgeGroup(40)
				.matchGender(0)
				.customer(customerRep.getById("kim"))
				.region(regionRep.getById(2))
				.build());
		
		matchBoardRep.save(MatchBoard.builder()
				.matchTitle("아무거나 넣어봄")
				.matchContent("고기 짱맛있음")
				.matchRequestLastDate( LocalDate.parse("2021-12-01", formatter) )
				.tripDate(LocalDate.parse("2021-12-11", formatter))
				.matchPeopleNum(3)
				.matchAgeGroup(20)
				.matchGender(1)
				.customer(customerRep.getById("kim"))
				.region(regionRep.getById(2))
				.build());
		
		matchBoardRep.save(MatchBoard.builder()
				.matchTitle("아무거나 넣어봄4")
				.matchContent("고기 짱맛있음")
				.matchRequestLastDate( LocalDate.parse("2021-12-01", formatter) )
				.tripDate(LocalDate.parse("2021-12-11", formatter))
				.matchPeopleNum(3)
				.matchAgeGroup(20)
				.matchGender(2)
				.customer(customerRep.getById("jang"))
				.region(regionRep.getById(7))
				.build());
		
		matchBoardRep.save(MatchBoard.builder()
				.matchTitle("아무거나 넣어봄3")
				.matchContent("고기 짱맛있음")
				.matchRequestLastDate( LocalDate.parse("2021-12-01", formatter) )
				.tripDate(LocalDate.parse("2021-12-11", formatter))
				.matchPeopleNum(3)
				.matchAgeGroup(20)
				.matchGender(1)
				.customer(customerRep.getById("kim"))
				.region(regionRep.getById(6))
				.build());
		
	}
	
	@Test
	public void selectAllMatch() {
		List<MatchBoard> place = matchBoardRep.findAll();
		System.out.println("개수 : " + place.size());
		place.forEach(b->System.out.println(b.getMatchTitle() + " | "  + b.getMatchContent()));	
	}
	
	@Test
	public void updateMatch() {
		MatchBoard match = matchBoardRep.findById(22L).orElse(null);
		match.setMatchContent("수정된 내용");
		match.setMatchTitle("수정된 제목");
	}
	
	@Test
    public void deleteMatch() {
		matchBoardRep.deleteById(22L);
	}
	
	
	/**모임 신청 test*/
	@Test
	public void insertMatchRequest() {
		//일부러 틀린거 넣어봄
		/*
		requestRep.save(MatchRequest.builder()
				.customer(customerRep.getById("kim"))
				.matchBoard(matchBoardRep.getById(5L))
				.build());
		*/
		
		requestRep.save(MatchRequest.builder()
				.customer(customerRep.getById("jang"))
				.matchBoard(matchBoardRep.getById(21L))
				.build());
		
		requestRep.save(MatchRequest.builder()
				.customer(customerRep.getById("kim"))
				.matchBoard(matchBoardRep.getById(4L))
				.build());
	}
	
	@Test
	public void selectAllRequest() {
		List<MatchRequest> place = requestRep.findAll();
		System.out.println("개수 : " + place.size());
		place.forEach(b->System.out.println(b.getCustomer().getUserId() + "이 신청한 모임 제목 : "  + b.getMatchBoard().getMatchTitle()));	
	}
	
	@Test
	// 신청완료 -> 수락완료 변경 
	public void updateRequest() {
		MatchRequest match = requestRep.findById(4L).orElse(null);
		match.setRequestedState(1);
	}
	
	@Test
	//신청취소
    public void deleteRequest() {
		matchBoardRep.deleteById(4L);
	}
	
	
	@Test
	public void test() {
		List<MatchBoard> list = matchBoardRep.findByRegionAndDate(6, LocalDate.parse("2021-12-11", formatter));
		for (MatchBoard board : list) {
			System.out.println(board.getMatchTitle());
		}
	}
	
	
	@Test
	public void test222() {
		MatchRequest request = requestRep.select("kim", 121L);
		System.out.println(request);
		System.out.println(request.getRequestedState());
		request.setRequestedState(1);
	}
	
	
	@Test
	public void testtt() {
		placeBoardRep.deleteById(2L);
	}
}
