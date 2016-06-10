package com.mycompany.uomrmsweb.dao;

import com.mycompany.uomrmsweb.model.User;

public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
}

