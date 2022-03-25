package com.john.wilbur.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.john.wilbur.demo.models.Review;
import com.john.wilbur.demo.repositories.ReviewRepository;


@Service
public class ReviewService {
	@Autowired
	private ReviewRepository reviewRepository;

//	Collection of reviews
	public List<Review> allReviews(){
		return reviewRepository.findAll();
	}

//	Add
	public Review createReview(Review review) {
		return reviewRepository.save(review);
	}
	
//	Update
	public Review updateReview(Review review) {
		return reviewRepository.save(review);
	}

//	Delete
	public void deleteReview(Long id) {
		reviewRepository.deleteById(id);
	}

//	Get One review Details 
	public Review reviewDetails(Long id) {
		return reviewRepository.findById(id).orElse(null);
	}
}