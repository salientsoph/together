package kosta.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.Customer;
import kosta.mvc.domain.PlaceBoard;
import kosta.mvc.domain.Review;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.PlaceBoardRepository;
import kosta.mvc.repository.ReviewRepository;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewRepository reviewRep;
	
	@Autowired
	private PlaceBoardRepository placeBoardRep;
	
	@Autowired
	private CustomerRepository customerRep;

	@Override
	public void reviewInsert(Review review) {
		PlaceBoard placeBoard = placeBoardRep.findById(review.getPlaceBoard().getPlaceNo()).orElse(null);
		Customer customer = customerRep.findById(review.getCustomer().getUserId()).orElse(null);
		
		reviewRep.save(Review.builder().placeBoard(placeBoard)
				   .reviewContent(review.getReviewContent())
                .star(review.getStar())
                .customer(customer)
                .build());
	}

	@Override
	public void ReviewDelete(Long reviewNo) {
		Review review = reviewRep.findById(reviewNo).orElse(null);
		reviewRep.delete(review);
	}

	@Override
	public void ReviewUpdate(Long reviewNo, String reviewContent, int star, Long placeNo) {
		Review review = reviewRep.findById(reviewNo).orElse(null);
		System.out.println(review.getReviewContent());
		review.setReviewContent(reviewContent);
		review.setStar(star);
		System.out.println(review.getReviewContent());
	}

	@Override
	public List<Review> selectByPlaceBoard(Long placeNo) {
		PlaceBoard placeBoard = placeBoardRep.findById(placeNo).orElse(null);
		
		List<Review> list = reviewRep.selectByPlaceBoard(placeBoard);
		return list;
	}

}
