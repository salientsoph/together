package kosta.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchReply;
import kosta.mvc.service.MatchReplyService;

@Controller
@RequestMapping("/reply")
public class MatchReplyController {
	@Autowired
	private MatchReplyService matchReplyService;
	
	@RequestMapping("/insert")
	public String replyInsert(HttpSession session, MatchReply matchReply) {
		matchReplyService.matchReplyInsert(matchReply);
		
		return "redirect:/match/read/" + matchReply.getMatchBoard().getMatchNo();
	}
}
