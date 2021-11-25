package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Friend;

public interface FriendRepository extends JpaRepository<Friend, Long> {

}
