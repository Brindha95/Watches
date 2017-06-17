package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.services.CategoryService;

@Controller
public class HomeController {
	@Autowired
	
private CategoryService categoryService;
@RequestMapping("/")
public String interiors(HttpSession session)
{
	session.setAttribute("categories", categoryService.getAllCategories());
return "watches";
	}

	@RequestMapping("/blog")
	public String blogpage() {
		return "blog";

	}
	
	@RequestMapping("/home")
	public String homepage() {
		return "watches";

	}
	
	
			@RequestMapping("/login")
	public String loginpage(@RequestParam(value="error",required=false)String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
			if(error!=null)
				model.addAttribute("error", "Invalid Username and Password... Please enter valid username and password");
			if(logout!=null)
				model.addAttribute("logout", "Loggedout successfully..");
			return "login";
		}
			
			@RequestMapping("/contact")
			public String contact() {
				return "productview";

			}
			@RequestMapping("/aboutus")
			public String form() {
				return "aboutus";

			}


		
		
	}

