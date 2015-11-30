package com.ig.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.ig.modelo.Administrador;
import com.ig.util.HibernateUtil;

@Service
public class AdministradorService {

	private Session hibernate = HibernateUtil.getSessionFactory().openSession();

	public boolean isAdministrador(Administrador admin) throws Exception {
		try {

			String hql = "SELECT admin.acceso FROM Administrador admin WHERE admin.password = :password AND admin.email = :email ";
			Query query = hibernate.createQuery(hql).setParameter("password", admin.getPassword()).setParameter("email", admin.getEmail());
			query.uniqueResult();
			List<String> acceso = query.list();
			if (!acceso.isEmpty() && acceso.get(0).equals("administrador"))
				return true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
