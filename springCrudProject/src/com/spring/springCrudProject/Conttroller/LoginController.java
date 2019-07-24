package com.spring.springCrudProject.Conttroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/loggedout")
	public String loggedout() {
		return "loggedout";
	}
	
	@RequestMapping(value="/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping(value="/denied")
	public String denied() {
		return "denied";
	}

}
