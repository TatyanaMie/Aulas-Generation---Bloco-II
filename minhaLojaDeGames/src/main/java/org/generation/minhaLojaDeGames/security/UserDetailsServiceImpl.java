package org.generation.minhaLojaDeGames.security;

import java.util.Optional;

import org.generation.minhaLojaDeGames.model.Usuario;
import org.generation.minhaLojaDeGames.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private UsuarioRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<Usuario>usuario = userRepository.findByUsuario(username);
		usuario.orElseThrow(()-> new UsernameNotFoundException(username+ "not found."));
		return usuario.map(UserDetailsImpl::new).get();
		
	}

}
