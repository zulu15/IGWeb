package com.ig.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="admin")
public class Administrador implements Serializable{


	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="admin_email" , nullable=false)
	private String email;
	


	@Column(name="admin_password",nullable=false,length=20)
	private String password;
	
	
	@Column(name="admin_acceso",length=15, nullable=false)
	private String acceso;
	

	public Administrador(){}

	public Administrador(String password, String acceso, String email) {
		this.password = password;
		this.acceso = acceso;
		this.email=email;
	}
	
	//Accesores

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAcceso() {
		return acceso;
	}

	public void setAcceso(String acceso) {
		this.acceso = acceso;
	}
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
	
	
	
	
}
