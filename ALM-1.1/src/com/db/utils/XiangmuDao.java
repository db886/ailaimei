package com.db.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.db.model.Xiangmu;

public class XiangmuDao {
	private SessionFactory sessionFactory;
	public Xiangmu select(String string){
		Session session = sessionFactory.openSession();
		String sql= "from Xiangmu where xiangmubiaoti=?";
		Xiangmu xm=(Xiangmu) session.createQuery(sql).setParameter(0, string).uniqueResult();
		return xm;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
