package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Seller;

public interface SellerService {

	int updateSeller(Seller seller);

	List<PlaceBoard> selectPlaceBySeller(String sellerId);

}
