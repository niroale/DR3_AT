package br.edu.infnet.appatnicole.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appatnicole.model.negocio.Paciente;
import br.edu.infnet.appatnicole.model.negocio.Usuario;
import br.edu.infnet.appatnicole.model.service.PacienteService;
import br.edu.infnet.appatnicole.model.service.UsuarioService;

@Controller
public class PacienteController {
	
	@Autowired
	private PacienteService pacienteService;
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/paciente")
	public String showDetalhe(Model model) {
		
		model.addAttribute("lista", pacienteService.obterLista());
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		return "paciente/detalhe";
	}
	
	@PostMapping(value = "/paciente/incluir")
	public String incluir(Paciente paciente) {
		
		pacienteService.incluir(paciente);
		
		return "redirect:/paciente";
	}
	
	@GetMapping(value = "/paciente/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id, @SessionAttribute("user") Usuario usuario) {
	try {
		pacienteService.excluir(id);
	} catch (Exception e) {
	model.addAttribute("msg", "Não é possível excluir paciente, verificar pedidos em aberto!");
	return showDetalhe(model);
	}
	return "redirect:/paciente";
	}
	
}





