package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Review;

public interface ReviewRepository extends JpaRepository<Review, Long> {
	@Query("select r from Review r where r.placeBoard = ?1 order by r.reviewRegDate desc")
	List<Review> selectByPlaceBoard(PlaceBoard placeBoard);
}
