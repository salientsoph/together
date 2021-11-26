package kosta.mvc;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import kosta.mvc.domain.ChatMsg;
import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.repository.ChatMsgRepository;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.RegionRepository;
import kosta.mvc.repository.SellerRepository;

@SpringBootTest
@Transactional
@Commit
public class Rhg20Test {
	
	@Autowired
	private CustomerRepository customerRep;
	
	@Autowired
	private RegionRepository regionRep;
	
	@Autowired
	private SellerRepository sellerRep;
	
	@Autowired
	private PlaceBoardRepository placeBoardRep;
	
	@Autowired
	private MatchBoardRepository matchBoardRep;
	
	@Autowired
	private ChatMsgRepository chatMsgRep;

	@Test
	public void chatMsgInsert() {
		
		MatchBoard board = matchBoardRep.findById(1L).orElse(null);
		
		Customer jang = customerRep.findById("jang").orElse(null);
		Customer kim = customerRep.findById("kim").orElse(null);
		Customer rhg20 = customerRep.findById("rhg20").orElse(null);
		
		chatMsgRep.save(ChatMsg.builder()
				.matchBoard(board)
				.customer(jang)
				.chatMsgContent("안녕하세요")
				.build());
		
		chatMsgRep.save(ChatMsg.builder()
				.matchBoard(board)
				.customer(kim)
				.chatMsgContent("하이하이")
				.build());
		
		chatMsgRep.save(ChatMsg.builder()
				.matchBoard(board)
				.customer(rhg20)
				.chatMsgContent("앙녕핫ㅔ요")
				.build());
		
		chatMsgRep.save(ChatMsg.builder()
				.matchBoard(board)
				.customer(jang)
				.chatMsgContent("돈벌고싶다")
				.build());
	}
	
	/**
	 * failed attempt
	 * */
	@Test
	public void chatMsgSelectByMatchNo() {
		System.out.println("****************    chatMsgSelectByMatchNo   **********************");
		
		MatchBoard board = matchBoardRep.findById(1L).orElse(null);
		
		List<ChatMsg> list = chatMsgRep.selectByMatchNo(board);
		
		System.out.println("***************************************************");
		System.out.println();
		/*
		 * for(ChatMsg msg : list) { System.out.println(msg); }
		 */
		list.forEach(b->System.out.println(b));
		System.out.println();
		System.out.println("***************************************************");
	}
	
	@Test
	public void chatMsgSelectAll() {
		System.out.println("****************    chatMsgSelectAll   **********************");
		List<ChatMsg> list = chatMsgRep.findAll();
		System.out.println("\n전체개수: " + list.size()  +"\n");
		
		System.out.println("***************************************************");
		System.out.println();
		
		for(ChatMsg msg : list) { 
			System.out.println(msg);
		}
		 
		//list.forEach(b->System.out.println(b));
		System.out.println();
		System.out.println("***************************************************");
	}
	
	@Test
	public void test() {
		List<Customer> list = customerRep.findAll();
		
		System.out.println("***************************************************");
		System.out.println();
		
		for(Customer cu : list) { 
			System.out.println(cu);
		}
		 
		//list.forEach(b->System.out.println(b));
		System.out.println();
		System.out.println("***************************************************");
	}
}
