package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 Poprawne linki uruchamiajace aplikacje :
 
 	(1) http://localhost:8080/webstore-mp/spring/welcome
*/

@Controller
public class HomeController {

	@RequestMapping("/welcome")
	public String welcome(Model model) {
		
		model.addAttribute("greeting", "Witaj w sklepie internetowym");
		model.addAttribute("tagline", "Wyjatkowym i jedynym sklepie internetowym");
		
		return "welcome";
		
	}
	
}
