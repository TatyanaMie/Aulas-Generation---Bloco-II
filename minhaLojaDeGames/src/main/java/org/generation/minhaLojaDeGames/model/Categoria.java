package org.generation.minhaLojaDeGames.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_categoria")
public class Categoria {

	@Id
	@GeneratedValue	(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotBlank(message = "O atributo Tipo é Obrigatório e não pode utilizar espaços em branco!") 
	@Size(min=2, max=1000, message = "O atributo Tipo deve conter no mínimo 02 e no máximo 1000 caracteres")
	private String tipo;
	
	@NotBlank(message = "O atributo descrição é Obrigatório e não pode utilizar espaços em branco!") 
	@Size(min=5, message = "O atributo descrição deve conter no mínimo 05 caracteres")
	private String descricao;

	@OneToMany (mappedBy = "categoria", cascade = CascadeType.ALL)
	@JsonIgnoreProperties ("categoria")
	private List<Produto>produto;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public List<Produto> getProduto() {
		return produto;
	}

	public void setProduto(List<Produto> produto) {
		this.produto = produto;
	}

	



	
}
