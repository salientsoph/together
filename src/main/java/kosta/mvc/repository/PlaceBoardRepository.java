package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;


import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Seller;


public interface PlaceBoardRepository extends JpaRepository<PlaceBoard, Long> {

	
	@Query("update PlaceBoard b set b.placeCount = b.placeCount+1 where b.placeNo = ?1")
	@Modifying //ddl 혹은 dml 일때 꼭 넣어야함 
	int readnumUpdate(Long placeNo);

	@Query("update PlaceBoard b set b.placeLikedCount = b.placeLikedCount+1 where b.placeNo = ?1")
	@Modifying 
	int likedCountUpdate(Long placeLikedCount);

	/**
	 * 판매자가 작성한 모든 여행게시판 글 보기  
	 */
	List<PlaceBoard> findBySellerSellerId(String sellerId);
	
	/**
	 * 카테고리 분류 
	 * */
	Page<PlaceBoard> findByPlaceCategoryAndRegion(int placeCategory, Region region, Pageable pageable);

	Page<PlaceBoard> findBySeller(Seller seller, Pageable pageable);
}
