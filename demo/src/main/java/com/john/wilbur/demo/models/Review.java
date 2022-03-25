package com.john.wilbur.demo.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name="reviews")
public class Review {

	@Id
        @GeneratedValue(strategy=GenerationType.IDENTITY)
        private Long id;
	
	@NotBlank
        @Size(min = 2, max = 200, message="title should be between 2-200")
		private String title;

    @NotBlank
        @Size(min = 2, max = 200, message="Show Name should be between 2-200")
		private String review;

	@OneToOne( fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User poster;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

    public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
    }

	public User getPoster() {
		return poster;
	}

	public void setPoster(User poster) {
		this.poster = poster;
	}
}