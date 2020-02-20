package com.sqli.demoMVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UtilisateurControler {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView authentification() {
		ModelAndView model = new ModelAndView();
		model.setViewName("authentification");
		return model;
	}
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView submit() {
		
		return new ModelAndView("redirect:/");
	}
}
