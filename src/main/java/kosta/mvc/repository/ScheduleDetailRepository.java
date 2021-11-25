package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.ScheduleDetail;

public interface ScheduleDetailRepository extends JpaRepository<ScheduleDetail, Long> {

}
