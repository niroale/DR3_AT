package br.edu.infnet.appatnicole.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatnicole.model.negocio.Paciente;
import br.edu.infnet.appatnicole.model.negocio.Pedido;

@Repository
public interface IPacienteRepository extends CrudRepository<Paciente, Integer> {

	@Query("from Paciente pa where pa.usuario.id=:id")
	List<Paciente> obterLista(Integer id, Sort by);
	
}
