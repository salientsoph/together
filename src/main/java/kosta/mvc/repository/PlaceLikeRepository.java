package kosta.mvc.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-26
 * customer와 placeboard를 인자로 받아서 해당 장소 게시물에, 
 * 해당 사용자가이 좋아요를 등록한 적이 있는지 체크하는 용도로 사용
 */
public interface PlaceLikeRepository extends JpaRepository<PlaceLike,Long> {
//이 메서드는 JPA의 쿼리 메소드 네이밍 컨벤션에 맞춰서 만든 것이므로 다른 이름으로 지으면 동작하지 않는다.
    Optional<Integer> countByPlaceBoard(PlaceBoard placeBoard);
    
    Optional<PlaceLike> findByCustomerAndPlaceBoard(Customer customer, PlaceBoard placeBoard);
}
