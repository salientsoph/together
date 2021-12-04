package kosta.mvc.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-26
 * customer와 placeboard를 인자로 받아서 해당 장소 게시물에, 
 * 해당 사용자가 좋아요를 등록한 적이 있는지 체크하는 용도로 사용
 */
@Transactional(readOnly = true)
public interface PlaceLikeRepository extends JpaRepository<PlaceLike,Long> {
	
    //사용자가 이미 찜하기 한 게시물인지 체크
	Optional<PlaceLike> findByCustomerAndPlaceBoard(Customer customer, PlaceBoard placeBoard);
	
	//특정 장소 게시글에 찜하기가 총 몇 개인지 셀 때 사용할 메소드 
	Optional<Integer> countByPlaceBoard(PlaceBoard placeBoard);
	
	//해당 사용자에 해당하는 찜한 목록을 보여줄 때 사용할 메소드
	//@Query("select r from PlaceLike r where r.customer = ?1")
	//select * from place_like, place_board where place_like.place_no = place_board.place_no;
    Page<PlaceLike> findByCustomer(Customer customer, Pageable pageable);

}
