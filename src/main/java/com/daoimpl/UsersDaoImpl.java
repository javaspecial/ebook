package com.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UsersDao;
import com.model.Users;
import com.resources.AESencryption;

@Repository
@Transactional
public class UsersDaoImpl implements UsersDao {

	@Autowired
	SessionFactory session;

	public boolean saveOrUpdate(Users users) {
		session.getCurrentSession().saveOrUpdate(users);
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Users> list() {
		return session.getCurrentSession().createQuery("from Users").list();
	}

	public boolean delete(Users users) {
		session.getCurrentSession().delete(users);
		return true;
	}

	public boolean save(Users users) throws Exception {
		users.setPassword(AESencryption.getInstance().encrypt(users.getPassword()));
		session.getCurrentSession().save(users);
		return true;
	}

	public boolean validateUser(String username, String password) throws Exception {
		Session curentSession = null;
		try {
			curentSession = session.openSession();
			curentSession.beginTransaction();
			Criteria criteria = curentSession.createCriteria(Users.class);
			criteria.add(Restrictions.eq(Users.USER_EMAIL, username));
			criteria.add(Restrictions.eq(Users.USER_PASSWORD, AESencryption.getInstance().encrypt(password)));
			curentSession.getTransaction();
			List<Users> users = criteria.list();
			if (!users.isEmpty()) {
				return true;
			}
		} finally {
			closeSession(curentSession);
		}
		return false;
	}

	public boolean existEmail(String users) {
		Session openSession = null;
		try {
			openSession = session.openSession();
			openSession.beginTransaction();
			Criteria criteria = openSession.createCriteria(Users.class);
			criteria.add(Restrictions.eq(Users.USER_EMAIL, users));
			openSession.getTransaction();
			List<Users> list = criteria.list();
			if (!list.isEmpty()) {
				return true;
			}
		} finally {
			closeSession(openSession);
		}
		return false;
	}

	public void closeSession(Session session) {
		if (session != null) {
			session.close();
		}
	}
}