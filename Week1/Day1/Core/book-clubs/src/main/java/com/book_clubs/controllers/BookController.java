package com.book_clubs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.book_clubs.models.Book;
import com.book_clubs.services.BookService;
import com.book_clubs.services.UserService;


import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class BookController {
	 @Autowired
	    private BookService bookService;

	    @Autowired
	    private UserService userService;

	    @GetMapping("/books")
	    public String books(HttpSession session, Model model) {
	        Long userId = (Long) session.getAttribute("userId");
	        if (userId == null) {
	        	return "redirect:/";
	        }
	        model.addAttribute("user", userService.findUserById(userId));
	        model.addAttribute("books", bookService.allBooks());
	        return "books";
	    }

	    @GetMapping("/books/new")
	    public String newBook(@ModelAttribute("book") Book book) {
	        return "newBook";
	    }

	    @PostMapping("/books")
	    public String createBook(@Valid @ModelAttribute("book") Book book, BindingResult result, HttpSession session) {
	        if (result.hasErrors()) {
	           return "newBook";
	        }
	        Long userId = (Long) session.getAttribute("userId");
	        book.setUser(userService.findUserById(userId));
	        bookService.saveBook(book);
	        return "redirect:/books";
	    }

	    @GetMapping("/books/{id}")
	    public String showBook(@PathVariable("id") Long id, HttpSession session, Model model) {
	        Long userId = (Long) session.getAttribute("userId");
	        if (userId == null) {
	            return "redirect:/";
	        }
	        model.addAttribute("user", userService.findUserById(userId)); // Pass logged-in user
	        model.addAttribute("book", bookService.findBookById(id));    // Pass the book
	        return "showBook";
	    }
	    @RequestMapping("/books/{id}/edit")
	    public String edit(@PathVariable("id") Long id, Model model) {
	    	Book book = bookService.findBookById(id);
	    	model.addAttribute("book", book);
	    return "editBook";	
	    }
	    @RequestMapping("/books/{id}")
	    public String update(@Valid @ModelAttribute("book") Book book, BindingResult result, Model model) {
	    	if(result.hasErrors()) {
	    		model.addAttribute("book", book);
	    	return "edit";
	    	} else {
	    		bookService.updateBook(book);
	    		 return "redirect:/books";
	    	}
	    	
	    }
	    @RequestMapping("/books/{id}/delete")
	    public String deleteBook(@PathVariable("id") Long id, HttpSession session) {
	        Long userId = (Long) session.getAttribute("userId");
	        Book book = bookService.findBookById(id);

	        if (book.getUser().getId().equals(userId)) {
	            bookService.deleteBook(id);
	            return "redirect:/books";
	        } else {
	            return "redirect:/books"; // Or show an error page
	        }
	    }	
}
