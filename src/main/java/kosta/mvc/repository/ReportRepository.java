package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Report;

public interface ReportRepository extends JpaRepository<Report, Long> {

}
