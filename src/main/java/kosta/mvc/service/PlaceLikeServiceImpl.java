package kosta.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;

import kosta.mvc.domain.Region;
import kosta.mvc.repository.PlaceLikeRepository;
import kosta.mvc.repository.RegionRepository;


import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.PlaceLikeRepository;
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
	private final PlaceBoardRepository placeBoardRepository;
	private final CustomerRepository customerRepository;
	
	@Autowired
	RegionRepository regionRep;
	
	/**
	 * insertLike()가 찜하기 등록을 책임지는 메서드
	 * 1. 메서드 인자로 받은 placeNo로 찜하기를 등록할 장소를 불러온다.
	 * 2. 사용자가 이미 좋아요를 누른 게시물은 아닌지 체크한다.(view에서 처리)
	 * 3. 1, 2번을 모두 통과했다면 찜하기를 등록한다.
	 */
	@Override
	public boolean insertLike(Customer customer, Long placeNo) {
		PlaceBoard placeBoard = placeBoardRepository.findById(placeNo).orElseThrow();
		
		//중복 찜하기 방지 
		if(isNotAlreadyLike(customer, placeBoard)) {
			placeLikeRepository.save(new PlaceLike(customer, placeBoard));
			// +1된 찜하기 개수 담기 
			placeBoard.setPlaceLikedCount(placeBoard.getPlaceLikedCount()+1);
			return true;
		}
		
		return false;
	}
	
	//사용자가 이미 찜하기 한 게시물인지 체크 - Customer 객체로 받는데 위에선 String cusomer니깐.
	private boolean isNotAlreadyLike(Customer customer, PlaceBoard placeBoard) {
		return placeLikeRepository.findByCustomerAndPlaceBoard(customer, placeBoard).isEmpty();
	}
	

	/**
	 * 찜하기 삭제
	 */
	@Override
	public void deleteLike(Customer customer, Long placeNo) {
		PlaceBoard placeBoard = placeBoardRepository.findById(placeNo).orElseThrow();
		
		PlaceLike like = placeLikeRepository.findByCustomerAndPlaceBoard(customer, placeBoard).orElseThrow();
		
		placeLikeRepository.delete(new PlaceLike(customer, placeBoard));

		// -1된 찜하기 개수 변경 
		placeBoard.setPlaceLikedCount(placeBoard.getPlaceLikedCount()-1);
	}

	@Override
	public List<String> count(Customer customer, Long placeNo) {
		// TODO Auto-generated method stub
		return null;
	}

	
	/**
	 * 1. 찜하기를 count할 대상 place를 가져온다. 
	 * 2. 가져온 place로 like테이블에 쿼리한 결과를 List에 담는다. 
	 * 3. 현재 로그인한 사용자가 
	 *    이미 해당 장소 찜하기를 눌렀는지 검사하고 결과를 List에 담아 반환한다. 
	 */
//	@Override
//	public List<String> count(Customer customer, Long placeNo);{
//		PlaceBoard place = placeBoardRepository.findById(placeNo).orElseThrow();
//		
//		Integer placeLikedCount = placeLikeRepository.countByPlaceBoard(place).orElse(0);
//		
//		List<String> resultData = new ArrayList<>(Arrays.asList(String.valueOf(placeLikedCount)));
//
//		resultData.add(String.valueOf(isNotAlreadyLike(customer, place)));
//		
//		return resultData;
//	}
	


//	@Override
//	public Page<PlaceLike> selectByUserId(Pageable pageable, String userId) {
//		
//		Customer customer = customerRepository.selectidCheck(userId).orElse(null);
//		
//		Page<PlaceLike> likelist = placeLikeRepository.findByCustomer(customer, pageable);
//		
//		return likelist;
//	}

	@Override
	public Page<PlaceLike> selectAll(Customer loginCustomer, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PlaceLike> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<PlaceLike> selectAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<PlaceBoard> findLikedPlace(Customer loginCustomer, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<PlaceLike> selectByUserId(Pageable pageable, String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	
	/**
     * 사용자의 관심장소들 중 특정 지역만 출력
     * (스케줄 작성용)
     * */
	@Override
    public List<PlaceLike> selectByCustomerNoAndRegionCode(String id, int regionCode){
		Customer customer = customerRep.findById(id).orElse(null);
		Region region = regionRep.findById(regionCode).orElse(null);
		
		List<PlaceLike> list = placeLikeRepository.selectByCustomerNoAndRegionCode(customer, region);
	
	    return list;
	}
	
}