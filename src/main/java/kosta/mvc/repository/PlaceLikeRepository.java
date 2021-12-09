package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Report;
/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-26
 * customer와 placeboard를 인자로 받아서 해당 장소 게시물에, 
 * 해당 사용자가 좋아요를 등록한 적이 있는지 체크하는 용도로 사용
 */
@Transactional(readOnly = true)
public interface PlaceLikeRepository extends JpaRepository<PlaceLike,Long> {
	
	List<PlaceLike> findByCustomerUserId(String userId);
	
	PlaceLike findByPlaceBoardPlaceNo(Long placeNo);
	
	@Query("delete from PlaceLike placeLike where placeLike.customer.userId = ?1")
	@Modifying
	void deleteLikeListByUserId(String userId);
	
    /**
     * 사용자의 관심장소들 중 특정 지역만 출력
     * (스케줄 작성용)
     * */
    @Query("select r from PlaceLike r where r.customer = ?1 and r.placeBoard.region = ?2")
    List<PlaceLike> selectByCustomerNoAndRegionCode(Customer customer, Region region);
    
    Page<PlaceLike> findByCustomer(Customer customer, Pageable pageable);

}
