package br.com.rd.ved.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.rd.ved.model.Produto;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Integer>, CrudRepository<Produto,Integer>{

}
