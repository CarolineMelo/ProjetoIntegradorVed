package br.com.rd.ved.controller;

import java.net.URI;
import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import br.com.rd.ved.model.Cliente;
import br.com.rd.ved.service.ClienteService;

@RestController
@RequestMapping("/cliente")
public class ClienteController {

	@Autowired
	private ClienteService clienteService;

	@GetMapping
	public List<Cliente> Listar() {

		List<Cliente> clientes = clienteService.visualizar();

		return clientes;
	}

	@PostMapping
	@Transactional
	public ResponseEntity<Cliente> cadastrar(@RequestBody @Valid Cliente cliente, UriComponentsBuilder uriBuilder) {
		clienteService.salvar(cliente);
		URI uri = uriBuilder.path("/cliente/{id}").buildAndExpand(cliente.getId()).toUri();
		return ResponseEntity.created(uri).body(cliente);
	}

//	@DeleteMapping("{id}")
//	@Transactional
//	public Cliente cliente(@PathVariable("id") Integer id){
//		Cliente cliente = clienteService.deletar(id);
//		return cliente;
//}

	@DeleteMapping("delete={id}")
	@Transactional
	public void deletar (@PathVariable("id") Integer id){
		clienteService.deletar(id);
		
}
}
