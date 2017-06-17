
	package com.niit.controller;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Category;
import com.niit.services.CategoryService;

	@Controller
	public class Categorycontroller {

		@Autowired
		private CategoryService categoryService;
		
		 @RequestMapping("/categoryform")
		    public String getCategoryForm(Model model){
			model.addAttribute("category",new Category()); // firstname,lastname,email and phone are null
			return "categoryform";
		}
		    @RequestMapping("/categorydetails") // firstname,lastname,email and phone has some values
		    public String getUserDetails(@ModelAttribute(value="category") Category category,Model model){
		    	categoryService.saveCategory(category);
		    model.addAttribute("category",category);
	 	return "categorydetails";
	 }
	}


	


