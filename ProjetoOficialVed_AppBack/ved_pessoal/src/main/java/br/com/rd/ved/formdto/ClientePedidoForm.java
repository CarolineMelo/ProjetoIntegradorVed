package br.com.rd.ved.formdto;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.rd.ved.dto.ClientePedidoDTO;
import br.com.rd.ved.model.Pedido;
import br.com.rd.ved.repository.ClienteRepository;
import br.com.rd.ved.repository.PedidoRepository;

@RestController
@RequestMapping("/pedido")
public class ClientePedidoForm {

	@Autowired
	private ClienteRepository clienterepository;
	
	@Autowired
	private PedidoRepository pedidoRepository;
	
	@GetMapping
	public List<ClientePedidoDTO> listar(Integer idCliente){
		if(idCliente == null) {
			List<Pedido> pedidos = pedidoRepository.findAll();
			return ClientePedidoDTO.converter(pedidos);
		} else {
			List<Pedido> pedidos = pedidoRepository.findByClienteId(idCliente);
			return ClientePedidoDTO.converter(pedidos);
		}
	}
	
	
}
