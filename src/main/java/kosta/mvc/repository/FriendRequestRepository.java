package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.FriendRequest;

public interface FriendRequestRepository extends JpaRepository<FriendRequest, Long> {

}
