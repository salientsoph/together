package kosta.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.MatchReply;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.MatchReplyRepository;

@Service
public class MatchReplyServiceImpl implements MatchReplyService {
	
	@Autowired
	private CustomerRepository customerRep;
	
	@Autowired
	private MatchReplyRepository matchReplyRep;
	
	@Autowired
	private MatchBoardRepository matchBoardRep;

	@Override
	public void matchReplyInsert(MatchReply matchReply) {
		Customer customer = customerRep.findById(matchReply.getCustomer().getUserId()).orElse(null);
		MatchBoard matchBoard = matchBoardRep.findById(matchReply.getMatchBoard().getMatchNo()).orElse(null);
		if(matchReply.getMatchReply()!=null) {
			MatchReply Rereply = matchReplyRep.findById(matchReply.getMatchReply().getReplyNo()).orElse(null);
			matchReplyRep.save(MatchReply.builder().replyContent(matchReply.getReplyContent())
	                .secretReply(matchReply.getSecretReply())
	                .matchBoard(matchBoard)
	                .customer(customer)
	                .matchReply(Rereply)
	                .build());
			
			return;
		}
		
		matchReplyRep.save(MatchReply.builder().replyContent(matchReply.getReplyContent())
                .secretReply(matchReply.getSecretReply())
                .matchBoard(matchBoard)
                .customer(customer)
                .build());
	}

	@Override
	public void matchReplyDelete(Long replyNo) {
		matchReplyRep.deleteById(replyNo);
	}

	@Override
	public void matchReplyUpdate(Long replyNo, String replyContent) {
		MatchReply matchReply = matchReplyRep.findById(replyNo).orElse(null);
		matchReply.setReplyContent(replyContent);
	}

	@Override
	public List<MatchReply> selectByMatchBoard(Long matchNo) {
		MatchBoard matchBoard = matchBoardRep.findById(matchNo).orElse(null);
		
		List<MatchReply> list = matchReplyRep.selectByMatchNo(matchBoard);
		return list;
	}

}
