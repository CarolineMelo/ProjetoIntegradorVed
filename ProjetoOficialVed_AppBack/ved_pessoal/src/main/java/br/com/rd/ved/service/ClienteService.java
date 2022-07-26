package br.com.rd.ved.service;


import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import at.favre.lib.crypto.bcrypt.BCrypt;
import br.com.rd.ved.model.Cliente;
import br.com.rd.ved.repository.ClienteRepository;

@Service
public class ClienteService {
	private final ClienteRepository clienteRepository;

	public ClienteService(ClienteRepository clienteRepository) {
		this.clienteRepository = clienteRepository;
	}

	public void deletar(Integer id) {

		clienteRepository.deleteById(id);

	}

	public List<Cliente> visualizar() {
		return clienteRepository.findAll();

	}

	@Transactional
	public void atualizar(Integer id, Cliente clienteAtualizado) {

		Cliente cliente = clienteRepository.findById(id).get(); // select no banco pelo id

		cliente.setNome(clienteAtualizado.getNome());
		cliente.setSobreNome(clienteAtualizado.getSobreNome());
		cliente.setNomeSocial(clienteAtualizado.getNomeSocial());
		cliente.setTelefone(clienteAtualizado.getTelefone());
		cliente.setSenha(clienteAtualizado.getSenha());

		clienteRepository.saveAndFlush(cliente);

		

	}

	public void salvar(Cliente cliente) {

		cliente.setSenha(codificarSenha(cliente.getSenha()));
		clienteRepository.save(cliente);

	}

	private String codificarSenha(String senha) {
		return BCrypt.withDefaults().hashToString(12, senha.toCharArray());

	}

//	public boolean validarSenha(String senha, String senhaCrypto) {
//        BCrypt.Result response = BCrypt.verifyer().verify(senha.toCharArray(), senhaCrypto);
//        return response.verified;
//    }
}
