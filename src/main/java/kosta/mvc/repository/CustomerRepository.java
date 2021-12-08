package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import kosta.mvc.domain.Customer;

@Transactional(readOnly = true)
public interface CustomerRepository extends JpaRepository<Customer, String> {
	@Query("select c from Customer c where c.userId = ?1 and c.userPwd = ?2")
	Customer customerLogin(String userId, String userPwd);

	@Query("select c.userId from Customer c where c.userEmail = ?1")
	String selectid(String userEmail);

	@Query("select c from Customer c where c.userId = ?1")
	Customer selectidCheck(String userId);

	@Query("select c.userPwd from Customer c where c.userId = ?1 and c.userEmail = ?2")
	String selectPwd(String userId, String userEmail);

	//사용자정보수정 
	@Query("update Customer c set c.userNickname =?1, c.userPwd=?2, c.userPhone=?3 where c.userId=?4")
	@Modifying
	int updateCustomer(String userNickname, String userPwd, String userPhone, String userId);

}
