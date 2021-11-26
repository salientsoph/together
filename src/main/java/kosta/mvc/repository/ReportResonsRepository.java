package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.ReportReasons;

public interface ReportResonsRepository extends JpaRepository<ReportReasons, Long> {

}
