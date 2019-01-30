package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BookDao;
import com.model.Book;
import com.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao bookDao;

	@Transactional
	public List<Book> list() {
		return bookDao.list();
	}

	public boolean delete(Book book) {
		return bookDao.delete(book);
	}

	public boolean saveOrUpdate(Book book) {
		return bookDao.saveOrUpdate(book);
	}

	public boolean update(Book book) throws Exception {
		return bookDao.update(book);
	}

	public boolean save(Book book) throws Exception {
		return bookDao.save(book);
	}
	
	@Transactional
	public  List<Book> searchBook(String name) {
		return bookDao.searchBook(name);
	}

}
