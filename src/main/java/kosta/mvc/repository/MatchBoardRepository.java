package kosta.mvc.repository;

import java.time.LocalDate;
import java.util.List;

import javax.print.attribute.standard.DateTimeAtCompleted;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Report;

public interface MatchBoardRepository extends JpaRepository<MatchBoard, Long>{
	
	/**
	 * 조회수 증가
	 * */
	@Query("update MatchBoard b set b.matchCount = b.matchCount+1 where b.matchNo = ?1")
	@Modifying //ddl 혹은 dml 일때 꼭 넣어야함 
	int readnumUpdate(Long matchNo);
	
	
	/**
	 * 지역, 날짜, 나이대, 성별로 검색하기
	 * */
	@Query("select b from MatchBoard b inner join b.region r where r.regionCode = ?1 and b.tripDate=?2 and b.matchAgeGroup =?3 and b.matchGender =?4")
	List<MatchBoard> findByRegionAndDate(int region, LocalDate date, int ageRange, int gender);
	
	Page<MatchBoard> findByRegionAndTripDateAndMatchAgeGroupAndMatchGender(Region region, LocalDate date, int ageRange, int gender, Pageable pageable);
	
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

	
	/*
	  페이징 처리하는 검색 쿼리 작성법
	  
	  	@Query(value = "SELECT * FROM USERS WHERE LASTNAME = ?1",   		<-- 일반 select문에 검색 쿼리 where 붙인거
	    	countQuery = "SELECT count(*) FROM USERS WHERE LASTNAME = ?1",	<-- 위의 검색 쿼리에서 나온 결과의 총 개수가 몇개인지 count라는 컬럼으로 select해줌.
	    	nativeQuery = true) 											<-- JPQL이 아니라 일반 sql문으로 사용하겠다.
  		Page<User> findByLastname(String lastname, Pageable pageable);       
	 											   페이저블 객체 넘겨줌.
	 											   
	 	이렇게 만들면 자동으로 페이징 처리 됨.
	 	쿼리만 이렇게 짜두면 나머지 controller, service 단에서 페이징 처리된 sellectAll이나 findAll이랑 똑같이 사용 가능! 
	 */
	
	/**
	 * 사용자가 작성한 모든 모임 보기
	 */
	List<MatchBoard> findByCustomerUserId(String userId);
	
	Page<MatchBoard> findByCustomer(Customer customer, Pageable pageable);
}
