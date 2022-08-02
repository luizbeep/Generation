package com.blogpessoal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tb_temas")

public class Tema {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	@Size(min = 5, max = 1250)
	private String descricao;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public @NotBlank @Size(min = 5, max = 1250) String getDescricao() {
		return descricao;
	}

	public void setDescricao(@NotBlank @Size(min = 5, max = 1250) @NotBlank @Size(min = 5, max = 1250) String descricao) {
		this.descricao = descricao;
	}

}
