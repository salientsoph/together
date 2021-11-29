package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, String> {
	@Query("select c from Customer c where c.userId = ?1 and c.userPwd = ?2")
	Customer customerLogin(String userId, String userPwd);
	
	@Query("select c.userId from Customer c where c.userEmail = ?1")
	String selectid(String userEmail);
	
	@Query("select c.userPwd from Customer c where c.userId = ?1 and c.userEmail = ?2")
	String selectPwd(String userId, String userEmail);
}
