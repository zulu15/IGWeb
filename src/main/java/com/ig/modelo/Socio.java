package com.ig.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.SessionFactory;

import com.ig.util.HibernateUtil;

@Entity
@Table(name = "socio")
public class Socio {

	transient private String disciplina;

	public String getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(String disciplina) {
		this.disciplina = disciplina;
	}

	@Id
	@Column(name = "soc_email", nullable = false)
	private String email;

	@Column(name = "soc_nombre", nullable = false)
	private String nombre;

	@Column(name = "soc_apellido", nullable = false)
	private String apellido;

	@Column(name = "soc_password", nullable = false)
	private String password;

	@Column(name = "soc_peso")
	private double peso;

	@Column(name = "soc_altura")
	private double altura;

	@Column(name = "soc_edad")
	private int edad;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Socio [email=" + email + ", nombre=" + nombre + ", apellido=" + apellido + ", peso=" + peso + ", altura=" + altura + ", edad=" + edad + " password = " + password + "]";
	}

	public Socio(String email, String nombre, String apellido, double peso, double altura, int edad, String password) {
		super();
		this.password = password;
		this.email = email;
		this.nombre = nombre;
		this.apellido = apellido;
		this.peso = peso;
		this.altura = altura;
		this.edad = edad;
	}

	public Socio() {
	}

	public static void main(String... a) {
		SessionFactory hibernate = HibernateUtil.getSessionFactory();
	}
}
