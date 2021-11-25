package kosta.mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Chat;

public interface ChatRepository extends JpaRepository<Chat, Long> {

}
