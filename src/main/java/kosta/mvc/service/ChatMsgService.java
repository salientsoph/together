package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.ChatMsg;

public interface ChatMsgService {
	
	/**
	 * 매칭게시판별 채팅 메세지 보기
	 * 매칭게시판 번호로 조회
	 * */
	List<ChatMsg> selectByMatchNo(Long matchNo);
	
	/**
	 * 채팅메세지 입력하기
	 *  매칭게시판 번호 (어느 채팅에 입력할지)
	 *  회원 아이디(누가 입력할지)
	 *  필요함
	 * */
	void insertChatMsg(Long matchNo, String userId, String message);

}
