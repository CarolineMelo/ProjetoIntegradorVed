//package br.com.rd.ved.controller;
//
//import java.net.URI;
//import java.util.List;
//import javax.validation.Valid;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.util.UriComponentsBuilder;
//import javax.transaction.Transactional;
//import br.com.rd.ved.model.Endereco;
//import br.com.rd.ved.service.EnderecoService;
//
//@RestController
//@RequestMapping("/endereco")
//public class EnderecoController {
//	@Autowired
//	private EnderecoService enderecoService;
//
//	@GetMapping
//	public List<Endereco> Listar() {
//
//		List<Endereco> enderecos = enderecoService.visualizar();
//
//		return enderecos;
//	}
//
//	@PostMapping
//	@Transactional
//	public ResponseEntity<Endereco> cadastrar(@RequestBody @Valid Endereco endereco, UriComponentsBuilder uriBuilder) {
//		EnderecoService.salvar(endereco);
//		URI uri = uriBuilder.path("/endereco/{id}").buildAndExpand(endereco.getId()).toUri();
//		return ResponseEntity.created(uri).body(endereco);
//	}
//
//	@DeleteMapping("delete={id}")
//	@Transactional
//	public void deletar(@PathVariable("id") Integer id) {
//		enderecoService.deletar(id);
//
//	}
//
//}
