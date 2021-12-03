package kosta.mvc;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Seller;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.RegionRepository;
import kosta.mvc.repository.SellerRepository;

@SpringBootTest
@Transactional
@Commit
class KostaFinalApplicationTests {
	
	@Autowired
	private CustomerRepository customerRep;
	
	@Autowired
	private RegionRepository regionRep;
	
	@Autowired
	private SellerRepository sellerRep;
	
	@Autowired
	private PlaceBoardRepository placeBoardRep;
	
	@Autowired
	private MatchBoardRepository matchBoardRep;

	@Test
	void contextLoads() {
	}

	@Test
	public void customerInsert() {
		
		//customerRep.save(new Customer("testId", "1234", "김아무개", "그레이색이야", "test@test.com", 01012341234, "남", 20, null, null, null, null, null));
		
		//customerRep.save(Customer.builder().userId("jang").userName("희정").userNickname("aa").userEmail("aaa.daum.net").userPhone("100").userGender("남").userAge(20).build());
		//customerRep.save(Customer.builder().userId("kim").userPwd("1234").userName("수지").userNickname("bb").userEmail("bbb@naver.com").userPhone("01045674567").userGender("여").userAge(20).build());
	}
	
	@Test
	public void regionInsert() {
		regionRep.save(Region.builder().regionCode(1).regionName("서울").build());
		regionRep.save(Region.builder().regionCode(2).regionName("경기/인천").build());
		regionRep.save(Region.builder().regionCode(3).regionName("부산/경남").build());
		regionRep.save(Region.builder().regionCode(4).regionName("대전/충청").build());
		regionRep.save(Region.builder().regionCode(5).regionName("대구/경북").build());
		regionRep.save(Region.builder().regionCode(6).regionName("광주/전라").build());
		regionRep.save(Region.builder().regionCode(7).regionName("강원/제주").build());
	}
	
	@Test
	public void sellerInsert() {
		sellerRep.save(Seller.builder().sellerId("seller01")
									 .sellerPwd("1234")
									 .sellerName("셀러1")
									 .sellerNickname("셀러닉1")
									 .sellerEmail("seller@sell.com")
									 .sellerPhone("010-111-111")
									 .sellerRegisterNumber("1111")
									 .build());
		sellerRep.save(Seller.builder().sellerId("seller02")
				 .sellerPwd("1234")
				 .sellerName("셀러2")
				 .sellerNickname("셀러닉2")
				 .sellerEmail("seller@sell.com")
				 .sellerPhone("010-111-111")
				 .sellerRegisterNumber("1111")
				 .build());

		sellerRep.save(Seller.builder().sellerId("seller03")
									 .sellerPwd("1234")
									 .sellerName("셀러3")
									 .sellerNickname("셀러닉3")
									 .sellerEmail("seller@sell.com")
									 .sellerPhone("010-111-111")
									 .sellerRegisterNumber("1111")
									 .build());

		sellerRep.save(Seller.builder().sellerId("seller04")
									 .sellerPwd("1234")
									 .sellerName("셀러4")
									 .sellerNickname("셀러닉4")
									 .sellerEmail("seller@sell.com")
									 .sellerPhone("010-111-111")
									 .sellerRegisterNumber("1111")
									 .build());

		sellerRep.save(Seller.builder().sellerId("seller05")
									 .sellerPwd("1234")
									 .sellerName("셀러5")
									 .sellerNickname("셀러닉5")
									 .sellerEmail("seller@sell.com")
									 .sellerPhone("010-111-111")
									 .sellerRegisterNumber("!111")
									 .build());
	}
	
	@Test
	public void placeInsert() {
		
		//Seller seller = sellerRep.getById("seller01");
		//Region region = regionRep.getById(1);
		
		placeBoardRep.save(PlaceBoard.builder().seller(sellerRep.getById("seller01")) //셀러 아이디가 seller01 인놈
												.region(regionRep.getById(1)) 	//리전 넘버가 1번 (서울)
												.placeTitle("서울01")
												.placeContent("서울서울서울")
												.placeCategory(0)
												.build());
	}
	
	@Test
	public void matchInsert() {
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		//LocalDateTime dateTime = LocalDateTime.parse("2021-11-30", formatter);
		
		//DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		//LocalDate dt = LocalDate.parse("20140218", formatter);
		
//		matchBoardRep.save(MatchBoard.builder()
//									.matchTitle("테스트1")
//									.matchContent("testtesttest")
//									.matchRequestLastDate( LocalDate.parse("2021-11-30", formatter) )
//									.tripDate(LocalDate.parse("2021-12-01", formatter))
//									.matchPeopleNum(3)
//									.matchAgeGroup(20)
//									.matchGender(0)
//									.customer(customerRep.getById("jang"))
//									.region(regionRep.getById(1))
//									.build());
		
		matchBoardRep.save(MatchBoard.builder()
				.matchTitle("서울 경복궁 갈사람~")
				.matchContent("배고프다")
				.matchRequestLastDate( LocalDate.parse("2021-11-30", formatter) )
				.tripDate(LocalDate.parse("2021-12-01", formatter))
				.matchPeopleNum(3)
				.matchAgeGroup(20)
				.matchGender(0)
				.customer(customerRep.getById("jang"))
				.region(regionRep.getById(1))
				.build());
		
		matchBoardRep.save(MatchBoard.builder()
				.matchTitle("서울 동대문 갈사람~")
				.matchContent("자고시프다")
				.matchRequestLastDate( LocalDate.parse("2021-11-30", formatter) )
				.tripDate(LocalDate.parse("2021-12-01", formatter))
				.matchPeopleNum(3)
				.matchAgeGroup(20)
				.matchGender(0)
				.customer(customerRep.getById("jang"))
				.region(regionRep.getById(1))
				.build());
		
		matchBoardRep.save(MatchBoard.builder()
				.matchTitle("서울 잠실 롯데월드 같이 갈사람~")
				.matchContent("심심하다")
				.matchRequestLastDate( LocalDate.parse("2021-11-30", formatter) )
				.tripDate(LocalDate.parse("2021-12-01", formatter))
				.matchPeopleNum(3)
				.matchAgeGroup(20)
				.matchGender(0)
				.customer(customerRep.getById("jang"))
				.region(regionRep.getById(1))
				.build());
	}
}
