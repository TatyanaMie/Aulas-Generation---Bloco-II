package br.org.generation.blogpessoal.security;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import br.org.generation.blogpessoal.model.Usuario;

public class UserDetailsImpl implements UserDetails{
	
	private static final long serialVersionUID = 1L;
	
	private String userName;
	private String Password;
	private List<GrantedAuthority> authorities;
	
	public UserDetailsImpl(Usuario usuario) {
		this.userName = usuario.getUsuario();
		this.Password = usuario.getSenha();
	}

	public UserDetailsImpl() {}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		return Password;
	}

	@Override
	public String getUsername() {
		return userName;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	

}
