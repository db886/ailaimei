package com.db.utils;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.db.model.Wenda;
import com.db.model.Wenti;

public class WendaDao {
	private SessionFactory sessionFactory;
	public String addwd(Wenda wenda){
		String resutl = "提交失败";
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		resutl = (String) session.save(wenda);
		transaction.commit();
		session.close();
		return resutl;
	}
	public int deletewd(String wendaid){
		int row = 0;
		String hql ="delete from Wenda where wendaid=?";
		row = sessionFactory.openSession().createQuery(hql).setParameter(0, wendaid).executeUpdate();
		return row;
	}
	public List<Wenda> selectAll(int start,int end){
		String hql  = "from Wenda order by wendaid desc";
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Wenda> list  = session.createQuery(hql).setFirstResult(start).setMaxResults(end).list();
		Transaction transaction = session.beginTransaction();
		transaction.commit();
		session.close();
		return list;
	}
	public int selectadc(){
		String hql  = "select count(*) from Wenda";
		Session session = sessionFactory.openSession();
		Long adc =  (Long) sessionFactory.openSession().createQuery(hql).uniqueResult();
		Transaction transaction = session.beginTransaction();
		transaction.commit();
		session.close();
		return adc.intValue();
		
	}
	public String addwt(Wenti wenti){
		String resutl = "提交失败";
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		resutl = (String) session.save(wenti);
		transaction.commit();
		session.close();
		return resutl;
	}
	public List<Wenti> selectwt(){
		String hql = "from Wenti order by wentiid desc";
		@SuppressWarnings("unchecked")
		List<Wenti> list = sessionFactory.openSession().createQuery(hql).list();
		return list;
	}
	public int deletewt(String wentiid){
		int row = 0;
		String hql = "delete from Wenti where wentiid=?";
		row = sessionFactory.openSession().createQuery(hql).setParameter(0, wentiid).executeUpdate();
		return row;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
