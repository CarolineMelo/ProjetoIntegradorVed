package br.com.rd.ved.dto;

import java.util.List;
import java.util.stream.Collectors;
import javax.validation.constraints.NotBlank;
import br.com.rd.ved.model.Cliente;
import br.com.rd.ved.model.CupomDesconto;
import br.com.rd.ved.model.Endereco;
import br.com.rd.ved.model.Pedido;

public class CupomDescontoDTO {

	@NotBlank
	private Integer id;
	
	@NotBlank
	private String descricao;
	
	@NotBlank
	private Integer porcentagemDesconto;
	
	@NotBlank
	
	private List <Pedido> pedidos;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Integer getPorcentagemDesconto() {
		return porcentagemDesconto;
	}

	public void setPorcentagemDesconto(Integer porcentagemDesconto) {
		this.porcentagemDesconto = porcentagemDesconto;
	}

	public List<Pedido> getPedidos() {
		return pedidos;
	}

	public void setPedidos(List<Pedido> pedidos) {
		this.pedidos = pedidos;
	} 
	
	public CupomDescontoDTO(CupomDesconto obj) {
		id = obj.getId();
		descricao = obj.getDescricao();
		porcentagemDesconto = obj.getPorcentagemDesconto();
	}
	public static List<CupomDescontoDTO> converter(List<Endereco> cumpomDesconto) {
		return cumpomDesconto.stream().map(CupomDescontoDTO::new).collect(Collectors.toList());
	}
	
}
