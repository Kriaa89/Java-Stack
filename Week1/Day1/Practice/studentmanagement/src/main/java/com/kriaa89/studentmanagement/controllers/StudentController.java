package com.kriaa89.studentmanagement.controllers;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kriaa89.studentmanagement.models.Student;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
    @RequestMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("userForm", new Student());
        return "form";
    }
    
    @PostMapping("/save")
    public String processForm(@ModelAttribute("userForm") Student student, HttpSession session) {
        // get the list of students from the session
    	List<Student> students = (List<Student>) session.getAttribute("students");
    	// if the list is null, create a new one
    	if (students == null) {
    		students = new ArrayList<>();
    	}
    	// add the new student to the list
    	students.add(student);
    	// update the session with the new list
    	session.setAttribute("students", students);
        return "redirect:/students"; 
    }
    
    @GetMapping("/students")
    public String listStudents(Model model, HttpSession session) {
        // get the list of students from the session
    	List<Student> students = (List<Student>) session.getAttribute("students");
        if (students == null) {
    		students = new ArrayList<>();
    	  }
        // add the list to the model
        model.addAttribute("students", students);
        return "result";
    }
}

