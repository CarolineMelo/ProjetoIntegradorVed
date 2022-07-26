package br.com.rd.ved.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.rd.ved.model.Cartao;
import br.com.rd.ved.model.Produto;


@Repository
public interface CartaoRepository extends JpaRepository<Cartao, Integer>, CrudRepository<Cartao,Integer>{

	
	List<Cartao> findByClienteId(Integer idCliente);
	
	Cartao findByNumeroCartao(String numeroCartao);
	
}
