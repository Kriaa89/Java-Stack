package com.login_registration.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.login_registration.models.LoginUser;
import com.login_registration.models.User;
import com.login_registration.repositories.UserRepository;

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
	 public User findById(Long id) {
	        Optional<User> optionalUser = userRepo.findById(id);
	        if(optionalUser.isPresent()) {
	            return optionalUser.get();
	        } else {
	            return null;
	        }
	    }
	 public User login(LoginUser newLoginObject, BindingResult result) {
		    Optional<User> potentialUser = userRepo.findByEmail(newLoginObject.getEmail());

		    // Check if the user does not exist
		    if (!potentialUser.isPresent()) { 
		        result.rejectValue("email", "NotFound", "Invalid Email");
		        return null;
		    }

		    User user = potentialUser.get();

		    // Check if the password matches
		    if (!BCrypt.checkpw(newLoginObject.getPassword(), user.getPassword())) {
		        result.rejectValue("password", "Matches", "Invalid Password!");
		    }

		    // If there are errors, return null
		    if (result.hasErrors()) {
		        return null;
		    }

		    return user;
		}

}
