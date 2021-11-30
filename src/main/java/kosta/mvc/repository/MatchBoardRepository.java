package kosta.mvc.repository;

import java.time.LocalDate;
import java.util.List;

import javax.print.attribute.standard.DateTimeAtCompleted;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.Region;

public interface MatchBoardRepository extends JpaRepository<MatchBoard, Long>{
	
	/**
	 * 조회수 증가
	 * */
	@Query("update MatchBoard b set b.matchCount = b.matchCount+1 where b.matchNo = ?1")
	@Modifying //ddl 혹은 dml 일때 꼭 넣어야함 
	int readnumUpdate(Long matchNo);
	
	
	/**
	 * 지역, 날짜로 검색하기
	 * */
	//select m from Member m inner join m.team t
	@Query("select b from MatchBoard b inner join b.region r where r.regionCode = ?1 and b.tripDate=?2")
	List<MatchBoard> findByRegionAndDate(int region, LocalDate date);
	
	
	
	
}
