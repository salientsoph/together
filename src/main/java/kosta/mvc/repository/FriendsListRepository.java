package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.FriendsList;

public interface FriendsListRepository extends JpaRepository<FriendsList, Long> {

}
