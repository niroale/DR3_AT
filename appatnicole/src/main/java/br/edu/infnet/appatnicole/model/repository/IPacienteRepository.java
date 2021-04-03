package br.edu.infnet.appatnicole.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatnicole.model.negocio.Paciente;

@Repository
public interface IPacienteRepository extends CrudRepository<Paciente, Integer> {

}
