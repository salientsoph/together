package kosta.mvc;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.Region;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.RegionRepository;

@SpringBootTest
@Transactional
@Commit
class KostaFinalApplicationTests {
	
	@Autowired
	private CustomerRepository customerRep;
	
	@Autowired
	private RegionRepository regionRep;

	@Test
	void contextLoads() {
	}

	@Test
	public void customerInsert() {
		
		//customerRep.save(new Customer("testId", "1234", "김아무개", "그레이색이야", "test@test.com", 01012341234, "남", 20, null, null, null, null, null));
		
		customerRep.save(Customer.builder().userId("jang").userName("희정").userNickname("aa").userEmail("aaa.daum.net").userPhone("100").userGender("남").userAge(20).build());
	}
	
	public void regionInsert() {
		regionRep.save(Region.builder().regionCode(1).regionName("서울").build());
		regionRep.save(Region.builder().regionCode(2).regionName("경기/인천").build());
		regionRep.save(Region.builder().regionCode(3).regionName("부산/경남").build());
		regionRep.save(Region.builder().regionCode(4).regionName("대전/충청").build());
		regionRep.save(Region.builder().regionCode(5).regionName("대구/경북").build());
		regionRep.save(Region.builder().regionCode(6).regionName("광주/전라").build());
		regionRep.save(Region.builder().regionCode(7).regionName("강원/제주").build());
	}
}
