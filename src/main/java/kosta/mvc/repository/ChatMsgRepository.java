package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.ChatMsg;
import kosta.mvc.domain.MatchBoard;

public interface ChatMsgRepository extends JpaRepository<ChatMsg, Long> {

	@Query("select msg from ChatMsg msg where msg.matchBoard = ?1 order by chatMsgRegdate asc")
	List<ChatMsg> selectByMatchNo(MatchBoard board);
}
