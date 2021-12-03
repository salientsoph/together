package kosta.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping("/delete/{replyNo}/{matchNo}")
	public String deleteReply(@PathVariable(value = "replyNo") Long replyNo, @PathVariable(value = "matchNo") Long matchNo) {
		//System.out.println(replyNo + ", " + matchNo);
		System.out.println("why");
		matchReplyService.matchReplyDelete(replyNo);
		System.out.println("shit");
		return "redirect:/match/read/" + matchNo;
	}
	
	@RequestMapping("/update/{matchNo}")
	public String updateReply(@PathVariable Long matchNo, MatchReply matchReply) {
		//System.out.println(matchNo + ", " + matchReply.getReplyNo() + ", " + matchReply.getReplyContent());
		matchReplyService.matchReplyUpdate(matchReply.getReplyNo(), matchReply.getReplyContent());
		return "redirect:/match/read/" + matchNo;
	}
}
