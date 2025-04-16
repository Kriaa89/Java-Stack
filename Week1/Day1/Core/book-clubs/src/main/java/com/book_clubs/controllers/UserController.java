package com.book_clubs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.book_clubs.models.LoginUser;
import com.book_clubs.models.User;
import com.book_clubs.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class UserController {
	 @Autowired
	  private UserService userService;
	 
	 @GetMapping("/")
	 public String index(Model model) {
		 model.addAttribute("newUser", new User());
		 model.addAttribute("newLogin", new LoginUser());
		 
		 return "index";
	 }
	 @PostMapping("/register")
	 public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		 User registerdUser = userService.register(newUser, result);
		 if(result.hasErrors()) {
	            model.addAttribute("newLogin", new LoginUser());
	            return "index";
	        }
		 session.setAttribute("userId", registerdUser.getId());
		 return "redirect:/";
	 }
	 @PostMapping("/login")
	 public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
		 User user = userService.login(newLogin, result);
		 if(result.hasErrors()) {
	            model.addAttribute("newUser", new User());
	            model.addAttribute("newLogin", new LoginUser());
	            return "index";
	     }
	     session.setAttribute("userId", user.getId());
	     return "redirect:/books";

	 }
	 
	 @GetMapping("/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/";
		}
	 
	 
}
