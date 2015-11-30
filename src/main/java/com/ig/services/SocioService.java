package com.ig.services;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.ig.modelo.Disciplina;
import com.ig.modelo.PreInscripcion;
import com.ig.modelo.Socio;
import com.ig.util.HibernateUtil;

@Service
public class SocioService {
	private Session hibernate = HibernateUtil.getSessionFactory().openSession();

	public boolean isSocioRegistrado(Socio socio) {
		try {

			String hql = " from Socio socio WHERE socio.password = :password AND socio.email = :email ";
			Query query = hibernate.createQuery(hql).setParameter("password", socio.getPassword()).setParameter("email", socio.getEmail());
			query.uniqueResult();
			List<String> acceso = query.list();
			if (!acceso.isEmpty())
				return true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return (false);
	}

	public Socio obtenerSocio(Socio socio) {

		return (Socio) hibernate.get(Socio.class, socio.getEmail());
	}

	public void registrarSocio(Socio socio) throws Exception {

		try {
			Session sesion = HibernateUtil.getSessionFactory().openSession();
			sesion.beginTransaction();
			sesion.save(socio);
			sesion.getTransaction().commit();

		} catch (Exception e) {

			System.err.println("Error registrando un socio " + e);
		}

	}

	public void preInscribirSocio(Socio socio) {
		try {
			Session sesion = HibernateUtil.getSessionFactory().openSession();
			sesion.beginTransaction();
			Disciplina disciplina = (Disciplina) sesion.get(Disciplina.class, Long.parseLong(socio.getDisciplina()));
//			PreInscripcion preInscripcion = new PreInscripcion(0, new Date(), socio, disciplina);
//			sesion.save(preInscripcion);

			sesion.getTransaction().commit();

		} catch (Exception e) {
			System.err.println("Error preinscribiendo " + e);
		}
	}

	public static boolean isEmailDisponible(Socio socio) {
		Session sesion = HibernateUtil.getSessionFactory().openSession();
		if (sesion.get(Socio.class, socio.getEmail()) != null) {
			return false;
		}

		return true;
	}
	
	@SuppressWarnings("unchecked")
	public List<Socio> listarSocios(){
		return hibernate.createQuery("from Socio").list();
	}
	

	   public void eliminarSocio(String email) {
	        Transaction trns = null;
	        try {
	            trns = hibernate.beginTransaction();
	            Socio socio = (Socio) hibernate.load(Socio.class,email);
	            hibernate.delete(socio);
	            hibernate.getTransaction().commit();
	        } catch (RuntimeException e) {
	            if (trns != null) {
	                trns.rollback();
	            }
	            throw new RuntimeException("Error eliminando socio!");
	        } 
	    }
	
	   public static void main(String... a){
		  SocioService socio = new SocioService();
		  socio.eliminarSocio("azul@gmail.com");
	   }
}
