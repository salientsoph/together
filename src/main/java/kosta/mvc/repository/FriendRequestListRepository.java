package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.FriendRequestList;

public interface FriendRequestListRepository extends JpaRepository<FriendRequestList, Long> {

}
