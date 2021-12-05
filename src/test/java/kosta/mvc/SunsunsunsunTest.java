package kosta.mvc;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import kosta.mvc.domain.Admin;
import kosta.mvc.domain.MatchReply;
import kosta.mvc.domain.Review;
import kosta.mvc.repository.AdminRepository;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.MatchReplyRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.ReviewRepository;

@SpringBootTest
@Transactional
@Commit
public class SunsunsunsunTest {
	@Autowired
	private AdminRepository adminRep;
	
	@Autowired
	private ReviewRepository reviewRep;
	
	@Autowired
	private CustomerRepository customerRep;
	
	@Autowired
	private PlaceBoardRepository placeBoardRep;
	
	@Autowired
	private MatchReplyRepository matchReplyRep;
	
	@Autowired
	private MatchBoardRepository matchBoardRep;
	
	@Test
	public void adminInsert() {
		adminRep.save(Admin.builder().adminId("admin")
				                     .adminPwd("admin")
				                     .adminNickname("admin")
				                     .build());
	}
	
	@Test
	public void reviewInsert() {
		for(int i = 1; i <= 10; i++) {
			reviewRep.save(Review.builder().placeBoard(placeBoardRep.getById(2L))
										   .reviewContent("아주좋아요"+i)
					                       .star((i%4)+1)
					                       .customer(customerRep.getById("jang"))
					                       .build());
		}
		
	}
	
	@Test
	public void matchReplyInsert() {
		for(int i = 1; i <= 10; i++) {
			matchReplyRep.save(MatchReply.builder().replyContent("안녕하세요"+i)
					                               .secretReply("true")
					                               .matchBoard(matchReplyRep.getById(1L).getMatchBoard())
					                               .customer(customerRep.getById("jang"))
					                               .matchRereply(matchReplyRep.getById(1L))
					                               .build());
		}
	}
	
	@Test
	public void selectAll() {
		//List<MatchReply> list = matchReplyRep.findAll();
		List<Review> list = reviewRep.findAll();
		System.out.println("개수 : " + list.size());
		
		list.forEach(b->System.out.println(b));	
	}
	
	@Test
	public void update() {
		/*MatchReply matchReply = matchReplyRep.findById(1L).orElse(null);
		matchReply.setReplyContent("안녕하세요1");*/
		
		Review review = reviewRep.findById(1L).orElse(null);
		review.setReviewContent("리뷰입니다");
		review.setStar(3);
	}
	
	@Test
    public void delete() {
		//matchReplyRep.deleteById(11L);
		
		reviewRep.deleteById(1L);
	}
}
