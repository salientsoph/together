package kosta.mvc.service;


	import java.util.List;

	import kosta.mvc.domain.MatchBoard;
	import kosta.mvc.domain.MatchRequest;
	import kosta.mvc.domain.Customer;

	public interface MatchRequestService {
		
		/**
		 * 
		 * */
		public MatchRequest selectMatchRequest(Long matchNo);
		
		/**
		 * 내가 신청한 모임
		 * */
		public List<MatchBoard> selectMatchByCustomer(String userId);
		
		/**
		 * 모임 신청하기
		 * */
		public void insertMatchRequest(MatchRequest requestMatch);
		
		/**
		 * 모임 승락하기
		 * */
		public void approveMatchRequest(String id, int matchNo);
		
		
		/**
		 * 모임 거절하기
		 * */
		public void denyMatchRequest(String id, int matchNo);
		
		/**
		 * 모임 취소하기
		 * */
		public void cancelMatchRequest(String id, int matchNo);
		

		
		/**
		 * 모임에 신청됐는지 확인
		 * */
		public int ifMatchRequest(String id, long matchNo);
}
