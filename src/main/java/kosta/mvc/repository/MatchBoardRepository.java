package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.MatchBoard;

public interface MatchBoardRepository extends JpaRepository<MatchBoard, Long>{
	
	/**
	 * 조회수 증가
	 * */
	@Query("update MatchBoard b set b.matchCount = b.matchCount+1 where b.matchNo = ?1")
	@Modifying //ddl 혹은 dml 일때 꼭 넣어야함 
	int readnumUpdate(Long matchNo);
}
