package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.ScheduleDetail;

public interface ScheduleDetailRepository extends JpaRepository<ScheduleDetail, Long> {

	@Query("select sd from ScheduleDetail sd where sd.matchBoard = ?1")
	List<ScheduleDetail> selectByMatchNo(MatchBoard board);
}
