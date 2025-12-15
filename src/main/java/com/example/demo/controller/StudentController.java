package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Entity.StudentEntity;
import com.example.demo.Model.Student;
import com.example.demo.Service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/register")
	public String showRegister() {
		return "register"; // loads register.jsp
	}

	@GetMapping("/login")
	public String loginPage() {
		return "login"; // loads login.jsp
	}

	@GetMapping("/update")
	public String updatepage() {
		return "update";
	}

	@GetMapping("/delete")
	public String deletepage() {
		return "delete";
	}

	@GetMapping("/fetch")
	public String fetchpage(Model model) {
	    List<StudentEntity> list = service.findall();
	    model.addAttribute("list", list);
	    return "fetch";
	}



	@PostMapping("/register")
	public String save(Student student, Model model) {

		StudentEntity entity = service.saveFromModel(student);

		if (entity != null) {
			model.addAttribute("msg", "Registered Successfully!");
			return "login";
		} else {
			model.addAttribute("msg", "Registration Failed!");
			return "register";
		}
	}

	@PostMapping("/login")
	public String doLogin(Student student, Model model) {

		boolean exists = service.find(student);

		if (exists) {
			model.addAttribute("msg", "Login Successful!");
			model.addAttribute("name", student.getName());
			return "welcome";
		} else {
			model.addAttribute("msg", "Invalid Details!");
			return "login";
		}
	}

	@PostMapping("/delete")
	public String dodelete(@RequestParam Integer id, Model model) {

		boolean deleted = service.delete(id);

		if (deleted) {
			model.addAttribute("msg", "Deleted Successfully!");
			return "register";
		} else {
			model.addAttribute("msg", "Delete Failed!");
			return "delete";
		}
	}

	@PostMapping("/update")
	public String doUpdate(Student student, Model model) {

		StudentEntity updated = service.update(student);

		if (updated != null) {
			model.addAttribute("msg", "Updated Successfully!");
			return "login";
		} else {
			model.addAttribute("msg", "Update Failed!");
			return "update";
		}
	}

}
