package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Schedule;

public interface ScheduleRepository extends JpaRepository<Schedule, Long> {

}
