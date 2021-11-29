package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.Admin;
import kosta.mvc.domain.Seller;

public interface AdminRepository extends JpaRepository<Admin, String> {
	@Query("select a from Admin a where a.adminId = ?1 and a.adminPwd = ?2")
	Admin adminLogin(String adminId, String adminPwd);
}
