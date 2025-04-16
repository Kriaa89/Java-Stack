package com.book_clubs.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.book_clubs.models.LoginUser;
import com.book_clubs.models.User;
import com.book_clubs.repositories.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepo;
	public User register(User newUser, BindingResult result) {
		if (userRepo.findByEmail(newUser.getEmail()).isPresent()) {
			result.rejectValue("email", "Unique", "This email is already in use!");
		}
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
		}
		if(result.hasErrors()) {
        	return null;
        }
		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
        newUser.setPassword(hashed);
        
        return userRepo.save(newUser);
	}
	
	public User findUserById(Long id) {
		return userRepo.findById(id).orElse(null);
	}
	
	
	
	public User login(LoginUser newLogin, BindingResult result) {
		Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail());
		
		if (!potentialUser.isPresent()) { 
	        result.rejectValue("email", "NotFound", "Invalid Email");
	        return null;
	    }
		User user = potentialUser.get();
		if(!!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
			result.rejectValue("password", "Matches", "Invalid Password!");
		}
		if (result.hasErrors()) {
	        return null;
	    }

	    return user;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
