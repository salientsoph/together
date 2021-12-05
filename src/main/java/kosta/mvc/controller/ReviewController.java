package kosta.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.mvc.domain.Review;
import kosta.mvc.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/delete/{reviewNo}/{placeNo}")
	public String deleteReview(@PathVariable(value = "reviewNo") Long reviewNo, @PathVariable(value = "placeNo") Long placeNo) {
		reviewService.ReviewDelete(reviewNo);
		return "redirect:/place/read/" + placeNo;
	}
	
	@RequestMapping("/update/{placeNo}")
	public String updateReview(@PathVariable Long placeNo, Review review) {
		//System.out.println(review.getReviewContent() + ", " + review.getStar() + "," + review.getReviewNo());
		reviewService.ReviewUpdate(review.getReviewNo(), review.getReviewContent(), review.getStar(), placeNo);
		return "redirect:/place/read/" + placeNo;
	}
}
