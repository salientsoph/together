package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.Seller;

public interface SellerRepository extends JpaRepository<Seller, String> {
	@Query("select s from Seller s where s.sellerId = ?1 and s.sellerPwd = ?2")
	Seller sellerLogin(String sellerId, String sellerPwd);

	@Query("select s.sellerId from Seller s where s.sellerEmail = ?1")
	String selectid(String sellerEmail);

	@Query("select s from Seller s where s.sellerId = ?1")
	Seller selectidCheck(String sellerId);

	@Query("select s.sellerPwd from Seller s where s.sellerId = ?1 and s.sellerEmail = ?2")
	String selectPwd(String sellerId, String sellerEmail);

	//판매자정보수정 
	@Query("update Seller s set s.sellerNickname =?1, s.sellerPwd=?2, s.sellerPhone=?3 where s.sellerId=?4")
	@Modifying
	int updateSeller(String sellerNickname, String sellerPwd, String sellerPhone, String sellerId);

}
