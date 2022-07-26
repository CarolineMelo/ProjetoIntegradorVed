package br.com.rd.ved.dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.Size;

import br.com.rd.ved.model.Cliente;
import br.com.rd.ved.model.Fornecedor;
import br.com.rd.ved.model.Pedido;
import br.com.rd.ved.model.Uf;

public class ClienteEnderecoDTO {

	
	private Integer id;
	
	private String cep;

	private String rua;
	@Column(name = "numero")
	@Size(max = 10)
	private Integer numero;
	@Column(name = "complemento")
	@Size(max = 50)
	private String complemento;
	@Column(name = "municipio")
	@Size(max = 50)
	private String municipio;
	@Column(name = "cidade")
	@Size(max = 50)
	private String cidade;

	@OneToMany(mappedBy = "enderecos")
	private List<Pedido> pedidos;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_uf", nullable = false)
	private Uf uf;

	@ManyToMany(mappedBy = "enderecos", fetch = FetchType.LAZY)
	private List<Fornecedor> fornecedores;

	@ManyToMany(mappedBy = "enderecos", fetch = FetchType.LAZY)
	private List<Cliente> clientes;
}
