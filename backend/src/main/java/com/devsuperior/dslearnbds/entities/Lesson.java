package com.devsuperior.dslearnbds.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tb_lesson")
@Inheritance(strategy = InheritanceType.JOINED)// @Inheritance, deve ser usado na superclasse. JOINED indica ao framework para mapear uma tabela para esta classe abstrata e outra para cada classe concreta que herde dela.
public abstract class Lesson implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 
	private String title;
	private Integer position;
	
	@ManyToOne
	@JoinColumn(name = "section_id")
	private Section section;
	
	@OneToMany(mappedBy = "lesson")
	private List<Deliver> deliveries = new ArrayList<>();

	@ManyToMany
	@JoinTable(name = "tb_lessons_done", 
		joinColumns = @JoinColumn(name = "lesson_id"), 
		inverseJoinColumns = { 
				@JoinColumn(name = "user_id"),
				@JoinColumn(name = "offer_id") //como a entity Enrollment possui chave composta, deve-se declarar cada uma das composições da chaves
		}
	) 
	Set<Enrollment> enrrolmentsDone = new HashSet<>();
	
	public Lesson() {
	}

	public Lesson(Long id, String title, Integer position, Section section) {//não se deve incluir coleções em construtores. 
		super();
		this.id = id;
		this.title = title;
		this.position = position;
		this.section = section;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getPosition() {
		return position;
	}

	public void setPosition(Integer position) {
		this.position = position;
	}

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public Set<Enrollment> getEnrrolmentsDone() {
		return enrrolmentsDone;
	}
	
	public List<Deliver> getDeliveries() {
		return deliveries;
	}
	
	//não se deve incluir metodo set de coleções 

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Lesson other = (Lesson) obj;
		return Objects.equals(id, other.id);
	}
	
}
