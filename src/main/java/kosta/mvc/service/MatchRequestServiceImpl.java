package kosta.mvc.service;

	import java.util.List;

	import javax.transaction.Transactional;

	import org.springframework.stereotype.Service;

	import kosta.mvc.domain.MatchBoard;
	import kosta.mvc.domain.MatchRequest;
	import kosta.mvc.domain.Customer;
	import kosta.mvc.repository.MatchBoardRepository;
	import kosta.mvc.repository.MatchRequestRepository;
	import lombok.RequiredArgsConstructor;


	@Service  //생성 id="matchRequestServiceImpl"
	@RequiredArgsConstructor
	@Transactional
	public class MatchRequestServiceImpl implements MatchRequestService {

		private final MatchBoardRepository matchBoardRepository;
		private final MatchRequestRepository matchRequestRepository;
		
		@Override
		public List<MatchBoard> selectMatchByCustomer(String userId) {
			List<MatchBoard> list = matchBoardRepository.selectMatchByCustomer(userId); 
			return list;
		}

		@Override
		public void insertMatchRequest(MatchRequest matchRequest) {
			MatchRequest request = matchRequestRepository.save(matchRequest);
			System.out.println(request);
		}

		@Override
		public void approveMatchRequest(String id, int matchNo) {
			MatchRequest request = matchRequestRepository.selectMatchByCustomerAndMatchNo(id, matchNo);
			request.setRequestedState(1);
		}

		@Override
		public void denyMatchRequest(String id, int matchNo) {
			MatchRequest request = matchRequestRepository.selectMatchByCustomerAndMatchNo(id, matchNo);
			request.setRequestedState(2);
		}

		@Override
		public void cancelMatchRequest(String id, int matchNo) {
			MatchRequest request = matchRequestRepository.selectMatchByCustomerAndMatchNo(id, matchNo);
			request.setRequestedState(0);
		}

		@Override
		public MatchRequest selectMatchRequest(Long matchNo) {
			MatchRequest request = matchRequestRepository.selectMatchRequest(matchNo);
			return request;
		}

		@Override
		public int ifMatchRequest(String id, long matchNo) {
			MatchRequest request = matchRequestRepository.selectMatchByCustomerAndMatchNo(id, matchNo);
			if (request == null) {
				return 0; //목록에 존재하지 않음 (신청 가능함) 
			}
			return 1; 
		}

		
		/**
		 * 매칭 게시판 별 수락된 놈들 가져오기
		 * -유홍걸 작성함
		 * */
		@Override
		public List<MatchRequest> selectConfirmedList(long matchNo) {
			MatchBoard match = matchBoardRepository.findById(matchNo).orElse(null);
			
			List<MatchRequest> list = matchRequestRepository.selectConfirmedList(match);
			
			return list;
		}
}
