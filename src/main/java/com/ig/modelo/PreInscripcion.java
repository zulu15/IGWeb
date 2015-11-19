package com.ig.modelo;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "preinscripcion")
public class PreInscripcion {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "pre_id", nullable = false)
	private long id;

	@Temporal(TemporalType.DATE)
	@Column(name = "pre_fecha", nullable = false)
	private Date fecha;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "soc_email", nullable = false)
	private Socio socio;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "disc_id", nullable = true)
	private Disciplina disciplina;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Socio getSocio() {
		return socio;
	}

	public void setSocio(Socio socio) {
		this.socio = socio;
	}

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}

	@Override
	public String toString() {
		return "PreInscripcion [id=" + id + ", fecha=" + fecha + ", socio=" + socio + ", disciplina=" + disciplina + "]";
	}

	public PreInscripcion(long id, Date fecha, Socio socio, Disciplina disciplina) {
		
		this.id = id;
		this.fecha = fecha;
		this.socio = socio;
		this.disciplina = disciplina;
	}

	public PreInscripcion() {
	}

}
