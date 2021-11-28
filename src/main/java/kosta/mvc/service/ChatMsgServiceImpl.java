package kosta.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.ChatMsg;
import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.repository.ChatMsgRepository;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;

@Service
public class ChatMsgServiceImpl implements ChatMsgService {
	
	@Autowired
	ChatMsgRepository ChatMsgRep;
	
	@Autowired
	MatchBoardRepository matchBoardRep;
	
	@Autowired
	CustomerRepository customerRep;

	@Override
	public List<ChatMsg> selectByMatchNo(Long matchNo) {
		MatchBoard match = matchBoardRep.findById(matchNo).orElse(null);
		
		if(match==null) {
			throw new RuntimeException("해당하는 채팅방을 찾을 수 없습니다.");
		}
		
		List<ChatMsg> list = ChatMsgRep.selectByMatchNo(match);
		
		return list;
	}

	@Override
	public void insertChatMsg(Long matchNo, String userId, String message) {
		MatchBoard match = matchBoardRep.findById(matchNo).orElse(null);
		Customer customer = customerRep.findById(userId).orElse(null);
		
		if(match==null || customer==null || message==null) {
			throw new RuntimeException("누락된 값이 존재합니다.");
		}
		
		ChatMsgRep.save(ChatMsg.builder()
								.matchBoard(match)
								.customer(customer)
								.chatMsgContent(message)
								.build());

	}

}
