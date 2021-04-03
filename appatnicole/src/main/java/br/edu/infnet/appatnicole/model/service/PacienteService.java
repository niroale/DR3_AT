package br.edu.infnet.appatnicole.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatnicole.model.negocio.Paciente;
import br.edu.infnet.appatnicole.model.repository.IPacienteRepository;

@Service
public class PacienteService {
	
	@Autowired
	private IPacienteRepository pacienteRepository;
	
	public List<Paciente> obterLista(){
		
		return (List<Paciente>)pacienteRepository.findAll();
	}
	
	public void incluir(Paciente paciente) {
		pacienteRepository.save(paciente);
	}
	
	public void excluir(Integer id) {
		pacienteRepository.deleteById(id);
	}
}
