package br.com.rd.ved.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.rd.ved.model.Cliente;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Integer>, CrudRepository<Cliente, Integer> {

	List<Cliente> findByNome(String nomeCurso); 
	
	@Query(value = " select * from cliente c where c.email =  :email", nativeQuery = true)
	Optional<Cliente> findByEmail(@Param("email") String email);
}
