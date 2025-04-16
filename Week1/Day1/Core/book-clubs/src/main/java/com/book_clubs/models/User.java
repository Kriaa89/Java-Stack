package com.book_clubs.models;

import com.book_clubs.models.Book;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@NotEmpty(message = "name is required")
	@Size(min = 3, max = 30, message="name must be betwenn 3 and 30 characters")
	private String name;
	
	@NotEmpty(message = "Email is required!")
    @Email(message = "Invalid email format!")
    private String email;
	
	 @NotEmpty(message = "Password is required!")
	 @Size(min = 8, message = "Password must be at least 8 characters long.")
	 private String password;
	 
	 @Transient
	 @NotEmpty(message="Confirm Password is required!")
	 @Size(min=8,  message="Confirm must be at least 8 characters long!")
	 private String confirm;
	 
	 @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	 private List<Book> books;
	 
	 public User() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}
}
