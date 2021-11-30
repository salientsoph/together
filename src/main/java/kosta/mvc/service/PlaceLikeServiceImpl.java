package kosta.mvc.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.repository.PlaceLikeRepository;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.PlaceBoardRepository;
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

	@Autowired
	CustomerRepository customerRep;
	
	/**
	 * addLike()가 찜하기 등록을 책임지는 메서드
	 * 1. 메서드 인자로 받은 placeNo로 찜하기를 등록할 장소를 불러온다.
	 * 2. 사용자가 이미 좋아요를 누른 게시물은 아닌지 체크한다.
	 * 3. 1, 2번을 모두 통과했다면 찜하기를 등록한다.
	 */
	@Override
	public boolean insertLike(Customer customer, Long placeNo) {
		PlaceBoard place = placeBoardRepository.findById(placeNo).orElseThrow();

		//중복 찜하기 방지
		if(isNotAlreadyLike(customer, place)) {
			placeLikeRepository.save(new PlaceLike(customer,place));
			return true;
		}
		return false;
	}

	/**
	 * 찜하기 삭제
	 */
	@Override
	public void deleteLike(Customer customer, Long placeNo) {
		PlaceBoard place = placeBoardRepository.findById(placeNo).orElseThrow();
		PlaceLike like = placeLikeRepository.findByCustomerAndPlaceBoard(customer, place).orElseThrow();
		placeLikeRepository.delete(like);
	}

	/**
	 * 1. 찜하기를 count할 대상 place를 가져온다. 
	 * 2. 가져온 place로 like테이블에 쿼리한 결과를 List에 담는다. 
	 * 3. 현재 로그인한 사용자가 
	 *    이미 해당 레시피에 좋아요를 눌렀는지 검사하고 결과를 List에 담아 반환한다. 
	 */
	@Override
	public List<String> count(Long placeNo, Customer loginCustomer){
		PlaceBoard place = placeBoardRepository.findById(placeNo).orElseThrow();
		
		Integer placeLikedCount = placeLikeRepository.countByPlaceBoard(place).orElse(0);
		
		List<String> resultData = new ArrayList<>(Arrays.asList(String.valueOf(placeLikedCount)));

//		if(Object.nonNull(loginCustomer)) {
//			resultData.add(String.valueOf(isNotAlreadyLike(loginCustomer, place)));
//		}
		return resultData;
	}

	/**
	 * 사용자가 이미 찜하기 한 게시물인지 체크 
	 */
	private boolean isNotAlreadyLike(Customer customer, PlaceBoard place) {
		return placeLikeRepository.findByCustomerAndPlaceBoard(customer, place).isEmpty();
	}


	@Override
	public Page<PlaceLike> selectByUserId(Pageable pageable, String userId) {
		
		Customer customer = customerRep.findById(userId).orElse(null);
		
		Page<PlaceLike> likelist = placeLikeRepository.findByCustomer(customer, pageable);
		
		return likelist;
	}
}