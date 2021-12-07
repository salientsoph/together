package kosta.mvc.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.Region;

public interface PlaceLikeService {

	/**
	 * 찜하기 등록
	 */
	boolean insertLike(Customer customer, Long placeNo);

	/**
	 * 찜하기 삭제
	 */
	void deleteLike(Customer customer, Long placeNo);

	/**
	 * 관심받은 수(찜하기) 
	 */
	List<String> count(Customer customer, Long placeNo);

	/**
	 * 로그인한 사용자에 해당하는 찜한 목록 전체검색 - Page처리 
	 */

	Page<PlaceLike> selectByUserId(Pageable pageable, String userId);
//	Page<PlaceBoard> findLikedPlaceBoard(Customer customer, Pageable pageable);
	
	/**
     * 사용자의 관심장소들 중 특정 지역만 출력
     * (스케줄 작성용)
     * */
    List<PlaceLike> selectByCustomerNoAndRegionCode(String id, int regionCode);
    

	Page<PlaceLike> selectAll(Customer loginCustomer, Pageable pageable);
	
	/**
	 * 전체검색
	 * */
	List<PlaceLike> selectAll();
		
	/**
	 * 전체검색 - Page처리
	 * */
	Page<PlaceLike> selectAll(Pageable pageable);

	Page<PlaceBoard> findLikedPlace(Customer loginCustomer, Pageable pageable);


	/**
	 * 1. 찜하기를 count할 대상 place를 가져온다. 
	 * 2. 가져온 place로 like테이블에 쿼리한 결과를 List에 담는다. 
	 * 3. 현재 로그인한 사용자가 
	 *    이미 해당 장소 찜하기를 눌렀는지 검사하고 결과를 List에 담아 반환한다. 
	 */
	//Page<PlaceLike> selectByUserId(Pageable pageable, String userId);
	
	
	
}