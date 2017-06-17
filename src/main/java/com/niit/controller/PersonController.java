


package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.Person;
import com.niit.person.PersonDao;


@Controller
public class PersonController {
	@Autowired PersonDao persondao;
	

	@RequestMapping(value={"/person",""})
	public String getPersonForm(Model model) {
		model.addAttribute("person", new Person());
		
		return "Personform";
	}

	
	@RequestMapping(value="/int",method=RequestMethod.POST)
			
	public String registerPerson(@ModelAttribute Person person, BindingResult result) {
		
	
		persondao.saveperson(person);
		
		return "Register";

	}
}
