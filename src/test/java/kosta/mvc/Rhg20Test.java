package kosta.mvc;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;

import kosta.mvc.domain.ChatMsg;
import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Report;
import kosta.mvc.domain.ReportReasons;
import kosta.mvc.domain.ScheduleDetail;
import kosta.mvc.repository.ChatMsgRepository;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.RegionRepository;
import kosta.mvc.repository.ReportReasonsRepository;
import kosta.mvc.repository.ReportRepository;
import kosta.mvc.repository.ScheduleDetailRepository;
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
	
	@Autowired
	private ScheduleDetailRepository scheduleDetailRep;
	
	@Autowired
	private ReportRepository reportRep;
	
	@Autowired
	private ReportReasonsRepository reportReasonsRep;

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
		
		MatchBoard board = matchBoardRep.findById(1L).orElse(null);
		List<ScheduleDetail> list = scheduleDetailRep.findAll();
		
		System.out.println("***************************************************");
		System.out.println();
		
		for(ScheduleDetail sd : list) { 
			System.out.println(sd);
		}
		 
		//list.forEach(b->System.out.println(b));
		System.out.println();
		System.out.println("***************************************************");
	}
	
	@Test
	public void scheduleDetailInsert() throws ParseException {
		
		MatchBoard match = matchBoardRep.findById(1L).orElse(null);
		PlaceBoard place = placeBoardRep.findById(1L).orElse(null);
		
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		String start = "14:30:00";
		String end = "16:45:00";
		LocalDateTime startTime = LocalDateTime.parse(match.getTripDate().toString() + " " + start, formatter);
		LocalDateTime endTime = LocalDateTime.parse(match.getTripDate().toString() + " " + end, formatter);
		
		System.out.println("***************************************************");
		System.out.println();
		System.out.println("startTime: " + startTime);
		System.out.println("endTime: "+ endTime);
		System.out.println();
		System.out.println("***************************************************");
		
		
		  scheduleDetailRep.save(ScheduleDetail.builder() .matchBoard(match)
		  .placeBoard(place) .startTime(startTime) .endTime(endTime)
		  .title(place.getPlaceTitle()) .content(place.getPlaceContent()) .build());
		 
		 
	}
	
	@Test
	public void scheduleDetailUpdate() {
		
		ScheduleDetail sd = scheduleDetailRep.findById(17L).orElse(null);
		
		MatchBoard match = sd.getMatchBoard();
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		String start = "20:15:00";
		String end = "21:35:00";
		LocalDateTime startTime = LocalDateTime.parse(match.getTripDate().toString() + " " + start, formatter);
		LocalDateTime endTime = LocalDateTime.parse(match.getTripDate().toString() + " " + end, formatter);
		
		sd.setStartTime(startTime);
		sd.setEndTime(endTime);
		
		System.out.println("***************************************************");
		System.out.println();
		System.out.println(sd.toString());
		System.out.println();
		System.out.println("***************************************************");
		
	}
	
	@Test
	public void scheduleDetailDelete() {
		scheduleDetailRep.deleteById(17L);
	}
	
	@Test
	public void reportInsert() {
		
		Customer customer = customerRep.getById("rhg20");
		MatchBoard matchBoard = matchBoardRep.getById(1L);
		ReportReasons reason = reportReasonsRep.getById(5L);
		
		reportRep.save(Report.builder()
							.reportTitle("신고합니다")
							.reportContent("저새끼 나쁜새끼예요")
							.customer(customer)
							.matchBoard(matchBoard)
							.reportReasons(reason)
							.build());
	}
	
	@Test
	public void reportUpdate() {
		Report report = reportRep.getById(2L);
		
		report.setReportTitle("신고한다고요");
		report.setReportContent("아 진짜");
		report.setReportStatus("처리완료");
	}
	
	@Test
	public void reportSelectAll() {
		List<Report> list = reportRep.findAll();
		
		System.out.println("***************************************************");
		System.out.println();
		list.forEach(b->System.out.println(b));
		System.out.println();
		System.out.println("***************************************************");
	}
	
	@Test
	public void reportSelectByCustomerNo() {
		Customer customer = customerRep.findById("rhg20").orElse(null);
		
		List<Report> list = reportRep.selectByCustomerNo(customer);
		
		System.out.println("***************************************************");
		System.out.println();
		list.forEach(b->System.out.println(b));
		System.out.println();
		System.out.println("***************************************************");
	}
	
	@Test
	public void reportDeleteByReportNo() {
		reportRep.deleteById(1L);
	}
	
	@Test
	public void reportReasonsSelectAll() {
		List<ReportReasons> list = reportReasonsRep.findAll();
		
		System.out.println("***************************************************");
		System.out.println();
		list.forEach(b->System.out.println(b));
		System.out.println();
		System.out.println("***************************************************");
	}
	
}
