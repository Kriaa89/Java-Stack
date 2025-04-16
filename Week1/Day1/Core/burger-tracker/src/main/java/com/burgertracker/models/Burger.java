package com.burgertracker.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "burgers")
public class Burger {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull(message = "burger name must not be empty")
	@Size(min = 3,message = "Name must be at least 3 characters")
	private String burgerName;
	
	@NotNull(message = "Restaurant name must not be empty")
	@Size(min = 3,message = "Restaurant name must be at least 3 characters")
	private String restaurantName;
	
	@NotNull(message = "Rating must not be empty")
	@Min(value = 1, message = "rating must be at least 1")
	@Max(value = 5, message = "rating must be at most 5")
	private Integer rating;
	
	@NotBlank(message = "notes must not be empty")
	private String notes;
	
	public Burger() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBurgerName() {
		return burgerName;
	}

	public void setBurgerName(String burgerName) {
		this.burgerName = burgerName;
	}

	public String getRestaurantName() {
		return restaurantName;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
	
}
