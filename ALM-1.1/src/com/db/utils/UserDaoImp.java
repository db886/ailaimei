package com.db.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.db.model.User;

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
	public boolean updataUserDao(User user){
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
}
