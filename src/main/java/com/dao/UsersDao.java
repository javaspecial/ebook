package com.dao;

import java.util.List;

import com.model.Users;

public interface UsersDao {
	public List<Users> list();

	public boolean delete(Users users);

	public boolean saveOrUpdate(Users users);

	public boolean save(Users users) throws Exception;

	public boolean validateUser(String username, String password) throws Exception;

	public boolean existEmail(String users);
}
