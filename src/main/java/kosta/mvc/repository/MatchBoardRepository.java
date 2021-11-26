package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.MatchBoard;

public interface MatchBoardRepository extends JpaRepository<MatchBoard, Long>{

}
