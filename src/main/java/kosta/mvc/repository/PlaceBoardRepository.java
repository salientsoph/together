package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.PlaceBoard;

public interface PlaceBoardRepository extends JpaRepository<PlaceBoard, Long> {

}
