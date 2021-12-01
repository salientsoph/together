package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.PlaceBoard;

public interface PlaceBoardRepository extends JpaRepository<PlaceBoard, Long> {

	
	@Query("update PlaceBoard b set b.placeCount = b.placeCount+1 where b.placeNo = ?1")
	@Modifying //ddl 혹은 dml 일때 꼭 넣어야함 
	int readnumUpdate(Long placeNo);
}
