package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchReply;

public interface MatchReplyService {
	/**
	 * 댓글 등록
	 * */
	void matchReplyInsert(MatchReply matchReply);
	
	/**
	 * 댓글 삭제
	 */
	void matchReplyDelete(Long replyNo);
	
	/**
	 * 댓글 수정
	 * */
	void matchReplyUpdate(Long replyNo, String ReplyContent);
	
	/**
	 * 댓글 조회
	 * */
	List<MatchReply> selectByMatchBoard(Long matchNo);
}
