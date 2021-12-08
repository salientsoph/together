package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.PlaceLike;

public interface PlaceLikeService {

	/**
	 * 사용자의 관심장소들 중 특정 지역만 출력
	 * (스케줄 작성용)
	 * */
	List<PlaceLike> selectByCustomerNoAndRegionCode(String id, int regionCode);




}