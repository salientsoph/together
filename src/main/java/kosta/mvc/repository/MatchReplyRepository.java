package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.MatchReply;

public interface MatchReplyRepository extends JpaRepository<MatchReply, Long> {
	@Query("select m from MatchReply m where m.matchBoard = ?1 and rereply_no = null order by m.replyDate asc")
	List<MatchReply> selectByMatchNo(MatchBoard matchBoard);
}
