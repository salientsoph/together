package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.Seller;

public interface SellerRepository extends JpaRepository<Seller, String> {
	@Query("select s from Seller s where s.sellerId = ?1 and s.sellerPwd = ?2")
	Seller sellerLogin(String sellerId, String sellerPwd);
	
	@Query("select s.sellerId from Seller s where s.sellerEmail = ?1")
	String selectid(String sellerEmail);
	
	@Query("select s.sellerPwd from Seller s where s.sellerId = ?1 and s.sellerEmail = ?2")
	String selectPwd(String sellerId, String sellerEmail);
}
