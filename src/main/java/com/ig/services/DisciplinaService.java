package com.ig.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.ig.modelo.Disciplina;
import com.ig.util.HibernateUtil;

@Service
public class DisciplinaService {
	public List<Disciplina> listarDisciplinas() {

		Session hibernate = HibernateUtil.getSessionFactory().openSession();
		Query query = hibernate.createQuery("from Disciplina");
		return query.list();
	}

}
