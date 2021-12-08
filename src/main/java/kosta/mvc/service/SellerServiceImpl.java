package kosta.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Seller;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.SellerRepository;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class SellerServiceImpl implements SellerService {
	
	private final SellerRepository sellerRep;
	private final PlaceBoardRepository placeBoardRep;
	
	/**
	 * 판매자 프로필 수정하기
	 */
	@Override
	public int updateSeller(Seller seller) {
		String sellerNickname = seller.getSellerNickname();
		String sellerPwd = seller.getSellerPwd();
		String sellerPhone = seller.getSellerPhone();
		String sellerId = seller.getSellerId();
		return sellerRep.updateSeller(sellerNickname, sellerPwd, sellerPhone, sellerId);
	}

	/**
	 * 판매자가 작성한 여행게시판 글 보기
	 */
	@Override
	public List<PlaceBoard> selectPlaceBySeller(String sellerId) {
		List<PlaceBoard> list = placeBoardRep.findBySellerSellerId(sellerId);
		return list;
	}

}
