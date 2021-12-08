package kosta.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.Region;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.PlaceLikeRepository;
import kosta.mvc.repository.RegionRepository;
import lombok.RequiredArgsConstructor;
/**
 * 찜한 목록 불러오기
 * @author 박은솔
 * @Date 2021-11-26
 */
@Service  //생성 id="placeLikeServiceImpl"
@RequiredArgsConstructor
@Transactional
public class PlaceLikeServiceImpl implements PlaceLikeService{

	private final PlaceLikeRepository placeLikeRepository;
	private final CustomerRepository customerRepository;
	private final RegionRepository regionRep;

	/**
	 * 사용자의 관심장소들 중 특정 지역만 출력
	 * (스케줄 작성용)
	 * */
	@Override
	public List<PlaceLike> selectByCustomerNoAndRegionCode(String id, int regionCode){
		Customer customer = customerRepository.findById(id).orElse(null);
		Region region = regionRep.findById(regionCode).orElse(null);

		List<PlaceLike> list = placeLikeRepository.selectByCustomerNoAndRegionCode(customer, region);

		return list;
	}



}