package com.db.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.db.model.User;
import com.db.model.Page;

public class UserDaoImp {
	private SessionFactory sessionFactory;

	public boolean save(User user) {
		Session session = sessionFactory.openSession();
		boolean result = false;
		try {
			session.save(user);
			result = true;
		} catch (Exception e) {
		}
		session.close();
		return result;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public User loginUser(User user) {
		Session session = sessionFactory.openSession();
		String hql = "from User where username=?";
		User u = (User) session.createQuery(hql).setParameter(0, user.getUsername()).uniqueResult();
		return u;
	}

	public boolean updataUserDao(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean result = false;
		try {
			session.update(user);
			transaction.commit();
			result = true;
		} catch (Exception e) {
		}
		session.close();
		return result;
	}

	public int selectadc(String string) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = sdf.parse(string);
			java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			String hql = "select count(*) from User where registtime=?";
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			Long adc = (Long) session.createQuery(hql).setDate(0, sqlDate).uniqueResult();
			transaction.commit();
			session.close();
			return adc.intValue();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public User select(String s) {
		String sql = "from User where username=?";
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		User u = (User) session.createQuery(sql).setParameter(0, s).uniqueResult();
		transaction.commit();
		session.close();
		return u;
	}

	public Page select(String string, Page page) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = sdf.parse(string);
			java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			String sql = "from User where registtime=?";
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			@SuppressWarnings("unchecked")
			List<User> list = (List<User>) session.createQuery(sql).setDate(0, sqlDate).setFirstResult(page.getStart()).setMaxResults(page.getEnd()).list();
			transaction.commit();
			session.close();
			page.setNowPageData(list);
			// page.setNowPageData(list);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return page;

	}
}
