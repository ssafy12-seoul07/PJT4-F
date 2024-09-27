package com.ssafy.review.model.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ssafy.review.model.dto.Review;

//싱글턴
public class ReviewRepositoryImpl implements ReviewRepository {

	private static ReviewRepository repo = new ReviewRepositoryImpl();

	private List<Review> list = new ArrayList<>();
	private Map<Integer, Review> reviews = new HashMap<>();

	private ReviewRepositoryImpl() {
	}

	public static ReviewRepository getInstance() {
		return repo;
	}

	public List<Review> selectAllByVideoId(int videoId) {
		List<Review> list = new ArrayList<>();

		for (Review review : list) {
			if (review.getVideoId() == videoId) {
				list.add(review);
			}
		}

		return list;
	}

	public Review selectOne(int id) {
		return reviews.get(id);
	}

	public void insertReview(Review review) {
		reviews.put(review.getId(), review);

		list.add(review);
	}

	public void updateReview(Review review) {
		reviews.put(review.getId(), review);

		list.set(review.getId(), review);
	}

	public void deleteReview(int id) {
		list.remove(id);
	}

}
