package com.sqli.demoMVC.controller;

import com.sqli.demoMVC.model.User;
import com.sqli.demoMVC.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UtilisateurControler {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/authentification", method = RequestMethod.GET)
	public ModelAndView authentification() {
		ModelAndView model = new ModelAndView();
		model.setViewName("authentification");
		return model;
	}
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView submit() {
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value="/Access_Denied",method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap modelMap){
		modelMap.addAttribute("user",userService.getUsername());
	//	modelMap.addAttribute("principal",userService.getPrincipal());
		return "accessDenied";
	}

}
