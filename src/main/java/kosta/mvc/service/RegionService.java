package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.Region;

public interface RegionService {
	/**
	 * 전체검색
	 * */
	List<Region> selectAll();
	
	/**
	 * 지역 하나 가져오기
	 * */
	Region selectByRegionNo(int no);
}
