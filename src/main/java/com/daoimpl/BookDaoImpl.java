package com.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BookDao;
import com.model.Book;

@Repository
@Transactional
public class BookDaoImpl implements BookDao {

	@Autowired
	SessionFactory session;

	public boolean saveOrUpdate(Book book) {
		session.getCurrentSession().saveOrUpdate(book);
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Book> list() {
		return session.getCurrentSession().createQuery("from Book").list();
	}

	public boolean delete(Book book) {
		session.getCurrentSession().delete(book);
		return true;
	}

	public boolean save(Book book) throws Exception {
		session.getCurrentSession().save(book);
		return true;
	}

	public boolean update(Book book) throws Exception {
		session.getCurrentSession().update(book);
		return false;
	}

	public void closeSession(Session session) {
		if (session != null) {
			session.close();
		}
	}

	public List<Book> searchBook(String name) {
		Session currentSession = session.getCurrentSession();
		Criteria criteria = currentSession.createCriteria(Book.class);
		criteria.add(Restrictions.ilike(Book.BOOK_TITLE, name, MatchMode.ANYWHERE));
		List<Book> list = criteria.list();
		if (list == null) {
			return null;
		}
		return list;
	}
}
