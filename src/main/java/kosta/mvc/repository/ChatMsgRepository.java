package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.ChatMsg;

public interface ChatMsgRepository extends JpaRepository<ChatMsg, Long> {

}
