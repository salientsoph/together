package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.Report;

public interface ReportRepository extends JpaRepository<Report, Long> {
	
	@Query("select r from Report r where r.customer = ?1")
	List<Report> selectByCustomerNo(Customer customer);
	
	Page<Report> findByCustomer(Customer customer, Pageable pageable);

}
