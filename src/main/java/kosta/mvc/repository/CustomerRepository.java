package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, String> {

}
