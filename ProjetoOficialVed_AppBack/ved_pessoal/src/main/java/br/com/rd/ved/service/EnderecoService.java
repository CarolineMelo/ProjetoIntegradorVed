//package br.com.rd.ved.service;
//
//import java.util.List;
//import java.util.Optional;
//import java.util.Scanner;
//
//import org.springframework.stereotype.Service;
//
//import br.com.rd.ved.model.Endereco;
//import br.com.rd.ved.model.Uf;
//import br.com.rd.ved.repository.EnderecoRepository;
//import br.com.rd.ved.repository.UfRepository;
//
//@Service
//public class EnderecoService {
//	private final EnderecoRepository enderecoRepository;
//	private final UfRepository ufRepository;
//	private Boolean sistema = true;
//	
//	
//	public EnderecoService(EnderecoRepository enderecoRepository, UfRepository ufRepository) {
//		super();
//		this.enderecoRepository = enderecoRepository;
//		this.ufRepository = ufRepository;
//	}
//
//
//
//	private void salvar( Id) {
//		
//
//		Optional<Uf> uf = ufRepository.findById(ufId);
//
//		Endereco endereco = new Endereco(cep, rua, numero, comlemento, municipio, cidade);
//		endereco.setUf(uf.get());
//
//		enderecoRepository.save(endereco);
//
//
//	}
//
//	private void atualizar() {
//		
//		Integer ufId = Integer.parseInt(sc.nextLine());
//
//		Optional<Uf> uf = ufRepository.findById(ufId);
//		Optional<Endereco> endereco = enderecoRepository.findById(id);
//		endereco.get().setCep(cep);
//		endereco.get().setMunicipio(municipio);
//		endereco.get().setComplemento(complemento);
//		endereco.get().setCidade(cidade);
//		endereco.get().setNumero(numero);
//		endereco.get().setRua(rua);
//		endereco.get().setUf(uf.get());
//	
//		enderecoRepository.save(endereco.get());
//
//		
//	}
//
//	private List<Endereco> visualizar() {
//		
//		return enderecoRepository.findAll();
//		//enderecos.forEach(e -> System.out.println(e));
//	}
//
//	private void deletar(Integer id) {
//		
//		enderecoRepository.deleteById(id);
//		
//	}
//
//	
//}
