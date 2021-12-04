package kosta.mvc.repository;

import java.time.LocalDate;
import java.util.List;

import javax.print.attribute.standard.DateTimeAtCompleted;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.Region;

public interface MatchBoardRepository extends JpaRepository<MatchBoard, Long>{
	
	/**
	 * 조회수 증가
	 * */
	@Query("update MatchBoard b set b.matchCount = b.matchCount+1 where b.matchNo = ?1")
	@Modifying //ddl 혹은 dml 일때 꼭 넣어야함 
	int readnumUpdate(Long matchNo);
	
	
	/**
	 * 지역, 날짜로 검색하기
	 * */
	//select m from Member m inner join m.team t
	@Query("select b from MatchBoard b inner join b.region r where r.regionCode = ?1 and b.tripDate=?2")
	List<MatchBoard> findByRegionAndDate(int region, LocalDate date);
	
		/**
	 * 사용자가 신청한 모든 모임 보기 (수락된거, 안된거, 이미 여행 끝난거 등등 모두 다) 
	 * */
	@Query(value = "select * "
			+ "from match_request r join match_board b using(match_no) join customer c on r.user_id = c.user_id and r.user_id= ?1", nativeQuery = true)
	List<MatchBoard> selectMatchByCustomer(String userId);
	
	/**
	 * 모임 신청한 모든 사용자 닉네임 출력 (모임 게시물에서 출력) 
	 * */
	@Query(value = "select c.user_id\n"
			+ "from match_request r \n"
			+ "join match_board b on r.match_no = b.match_no \n"
			+ "join customer c on r.user_id = c.user_id \n"
			+ "where r.requested_state = 0 and b.match_no = ?1", nativeQuery = true)
	List<String> selectAllRequestedCustomer(Long matchNo);
	
	
	/**
	 * 모임에 수락된 모든 사용자 닉네임 출력
	 * */
	@Query(value = "select c.user_id\n"
			+ "from match_request r \n"
			+ "join match_board b on r.match_no = b.match_no \n"
			+ "join customer c on r.user_id = c.user_id \n"
			+ "where r.requested_state = 1 and b.match_no = ?1", nativeQuery = true)
	List<String> selectAllApprovedCustomer(Long matchNo);
	
	
}
