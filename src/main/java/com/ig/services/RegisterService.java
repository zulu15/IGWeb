package com.ig.services;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.ig.modelo.Disciplina;
import com.ig.modelo.PreInscripcion;
import com.ig.modelo.Socio;
import com.ig.util.HibernateUtil;

@Service
public class RegisterService {

	public List<Disciplina> listarDisciplinas() {

		Session hibernate = HibernateUtil.getSessionFactory().openSession();
		Query query = hibernate.createQuery("from Disciplina");
		return query.list();
	}

	
	
	public void registrar(Socio socio) throws Exception{

		try {
			Session sesion = HibernateUtil.getSessionFactory().openSession();
			sesion.beginTransaction();
			sesion.save(socio);
			sesion.getTransaction().commit();

		} catch (Exception e) {
			
			System.err.println("Error registrando un socio "+e);
		}
		
	}
	
	public void preInscribirSocio(Socio socio){
		try {
			Session sesion = HibernateUtil.getSessionFactory().openSession();
			sesion.beginTransaction();
			Disciplina disciplina = (Disciplina) sesion.get(Disciplina.class, Long.parseLong(socio.getDisciplina()));
			PreInscripcion preInscripcion = new PreInscripcion(0, new Date(), socio, disciplina);
			sesion.save(preInscripcion);
			
			sesion.getTransaction().commit();
			
		} catch (Exception e) {
			System.err.println("Error preinscribiendo "+e);
		}
	}
	

	public static boolean isEmailDisponible(Socio socio) {
		Session sesion = HibernateUtil.getSessionFactory().openSession();
		if (sesion.get(Socio.class, socio.getEmail()) != null) {
			return false;
		}

		return true;
	}



	
}
