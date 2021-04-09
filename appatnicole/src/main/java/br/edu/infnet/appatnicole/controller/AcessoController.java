package br.edu.infnet.appatnicole.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcessoController {

	@GetMapping(value = "/")
	public String init(Model model) {
			
		return "login";
	}
	
	@GetMapping(value = "/home")
	public String home() {		
		return "index";
	}

	
}
