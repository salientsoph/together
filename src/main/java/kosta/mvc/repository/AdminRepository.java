package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Admin;

public interface AdminRepository extends JpaRepository<Admin, String> {

}
