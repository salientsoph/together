package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Seller;

public interface SellerRepository extends JpaRepository<Seller, String> {

}
