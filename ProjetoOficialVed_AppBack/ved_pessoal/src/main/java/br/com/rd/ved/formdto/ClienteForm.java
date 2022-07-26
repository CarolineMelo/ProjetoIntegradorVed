//package br.com.rd.ved.formdto;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import br.com.rd.ved.dto.ClienteDTO;
//import br.com.rd.ved.model.Cliente;
//import br.com.rd.ved.repository.ClienteRepository;
//
//
//@RestController
//@RequestMapping("/clientef")
//public class ClienteForm {
//	@Autowired
//	private ClienteRepository clienterepository;
//
//	@GetMapping
//	public List<ClienteDTO> listar(Integer idCliente){
//		if(idCliente == null) {
//			List<Cliente> clientes = clienteRepository.findAll();
//			return ClienteDTO.converter(clientes);
//		} else {
//			List<Cliente> clientes = clienteRepository.findByClienteId(idCliente);
//			return ClienteDTO.converter(clientes);
//		}
//	}
//	
//	
//	
//}