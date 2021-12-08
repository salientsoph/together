package kosta.mvc.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
	 * Seller 프로필 수정하기
	 */
	@Override
	public int updateSeller(Seller seller) {
		System.out.println(seller.getSellerId() + ", " + seller.getSellerNickname() + ", " + seller.getSellerPwd() + ", " + seller.getSellerPhone());
		Seller updateSeller = sellerRep.findById(seller.getSellerId()).orElse(null);
		updateSeller.setSellerPwd(seller.getSellerPwd());
		updateSeller.setSellerNickname(seller.getSellerNickname());
		updateSeller.setSellerPhone(seller.getSellerPhone());
		return 0;//sellerRep.updateSeller(sellerNickname, sellerPwd, sellerPhone, sellerId);
	}

	/**
	 * Seller가 작성한 여행게시판 글 보기
	 */
	@Override
	public Page<PlaceBoard> selectPlaceBySeller(String sellerId, Pageable pageable) {
		Page<PlaceBoard> list = placeBoardRep.findAll(pageable);
		return list;
	}

}
