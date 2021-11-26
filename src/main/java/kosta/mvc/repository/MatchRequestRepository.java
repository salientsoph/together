package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.MatchRequest;

public interface MatchRequestRepository extends JpaRepository<MatchRequest, Long> {

}
