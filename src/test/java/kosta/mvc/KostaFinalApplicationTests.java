package kosta.mvc;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import kosta.mvc.domain.Customer;
import kosta.mvc.repository.CustomerRepository;

@SpringBootTest
@Transactional
@Commit
class KostaFinalApplicationTests {
	
	@Autowired
	private CustomerRepository customerRep;

	@Test
	void contextLoads() {
	}

	@Test
	public void customerInsert() {
		
		//customerRep.save(new Customer("testId", "1234", "김아무개", "그레이색이야", "test@test.com", 01012341234, "남", 20, null, null, null, null, null));
		
		//customerRep.save(Customer.builder().userId("jang").userName("희정").userNickname("aa").userEmail("aaa.daum.net").userPhone("100").userGender("남").userAge(20).build());
		//customerRep.save(Customer.builder().userId("kim").userPwd("1234").userName("수지").userNickname("bb").userEmail("bbb@naver.com").userPhone("01045674567").userGender("여").userAge(20).build());
	}
	
}
