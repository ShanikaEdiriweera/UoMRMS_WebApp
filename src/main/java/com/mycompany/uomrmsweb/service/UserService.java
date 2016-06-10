package com.mycompany.uomrmsweb.service;

import com.mycompany.uomrmsweb.model.User;

public interface UserService {

	User findById(int id);
	
	User findBySso(String sso);
	
}