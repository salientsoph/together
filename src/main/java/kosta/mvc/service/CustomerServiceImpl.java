package kosta.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.MatchBoard;
import kosta.mvc.domain.PlaceLike;
import kosta.mvc.domain.Review;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.MatchBoardRepository;
import kosta.mvc.repository.PlaceLikeRepository;
import kosta.mvc.repository.ReviewRepository;
import kosta.mvc.repository.ScheduleDetailRepository;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class CustomerServiceImpl implements CustomerService {
	
	private final CustomerRepository customerRep;
	private final PlaceLikeRepository placeLikeRep;
	private final MatchBoardRepository matchBoardRep;
	private final ReviewRepository reviewRep;
	private final ScheduleDetailRepository scheduleDetailRep;
	
	/**
	 * 사용자 프로필 수정하기
	 */
	@Override
	public int updateCustomer(Customer customer) {
		System.out.println(customer.getUserId() + ", " + customer.getUserNickname() + ", " + customer.getUserPwd() + ", " + customer.getUserPhone());
		Customer updateCustomer = customerRep.findById(customer.getUserId()).orElse(null);
		updateCustomer.setUserPwd(customer.getUserPwd());
		updateCustomer.setUserNickname(customer.getUserNickname());
		updateCustomer.setUserPhone(customer.getUserPhone());
		return 0;
	}
	
	/**
	 * 찜리스트 등록하기
	 */
	@Override
	public int insertLikeList(PlaceLike placeLike) {
		placeLikeRep.save(placeLike);
		return 0;
	}

	/**
	 * 찜리스트 조회하기
	 */
	@Override
	public List<PlaceLike> selectLikeList(String userId) {
		List<PlaceLike> list = placeLikeRep.findByCustomerUserId(userId);
		//if(list.size()==0)throw new RuntimeException("오류로인해 찜목록을 가져오지 못했습니다.");
		return list;
	}
	
	@Override
	public Page<PlaceLike> selectAll(String userId, Pageable pageable) {
		Page<PlaceLike> list =  placeLikeRep.findAll(pageable);
		return list;
	}

	/**
	 * 찜리스트 삭제하기(단일 항목)
	 * */
	@Override
	public int deleteLikeList(Long placeLikeNo) {
		placeLikeRep.deleteById(placeLikeNo);
		return 0;
	}

	/**
	 * 유저아이디에 해당하는 모든 찜리스트 삭제하기
	 * */
	@Override
	public int deleteLikeListByUserId(String userId) {
		placeLikeRep.deleteLikeListByUserId(userId);
		return 0;
	}

	/**
	 * 사용자가 작성한 매칭게시판 글 보기
	 */
	@Override
	public List<MatchBoard> selectMatchByCustomer(String userId) {
		List<MatchBoard> list = matchBoardRep.findByCustomerUserId(userId);
		return list;
	}

	/**
	 * 사용자가 신청한 매칭 모임 보기
	 */
	@Override
	public List<MatchBoard> selectMatchList(String userId) {
		List<MatchBoard> list = matchBoardRep.selectMatchByCustomer(userId); 
		return list;
	}

	/**
	 * 사용자가 작성한 리뷰 조회
	 */
	@Override
	public List<Review> selectReviewList(String userId) {
		List<Review> list = reviewRep.findByCustomerUserId(userId);
		return list;
	}

	/**
	 * 사용자의 여행 일정 보기
	 */
//	@Override
//	public List<ScheduleDetail> selectScheduleList(String userId) {
//		List<ScheduleDetail> list = scheduleDetailRep.findByCustomerUserId(userId); 
//		return list;
//	}
	
}
