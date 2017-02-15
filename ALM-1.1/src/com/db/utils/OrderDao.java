package com.db.utils;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import com.db.model.Orders;

public class OrderDao {
	private SessionFactory sessionFactory;
	private Session session;
	public String addOrder(Orders order){
		session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String reuslt = "";
		try {
			reuslt =  (String) session.save(order);
			transaction.commit();
		} catch (ConstraintViolationException e) {
			reuslt ="-1";
		}
		session.close();
		return reuslt;
	}
	public int deletOrder(String no){
		session = sessionFactory.openSession();
		String hql = "delete from Orders where no=?" ;
		int row = session.createQuery(hql).setParameter(0, no).executeUpdate();
		Transaction transaction = session.beginTransaction();
		transaction.commit();
		session.close();
		return row;
	}
	public int updateOrderStatus(String no,String statu){
		session = sessionFactory.openSession();
		String hql = "update Orders i set i.status=? where i.no=?";
		int row = session.createQuery(hql).setParameter(0, statu).setParameter(1, no).executeUpdate();
		Transaction transaction = session.beginTransaction();
		transaction.commit();
		session.close();
		return row;
	}
	public List<Orders> selectOrder(String username){
		session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from Orders where username=?";
		@SuppressWarnings("unchecked")
		List<Orders> list = session.createQuery(hql).setParameter(0, username).list();		
		transaction.commit();
		session.close();
		return list;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
}
