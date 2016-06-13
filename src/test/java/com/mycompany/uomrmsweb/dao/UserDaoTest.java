/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.uomrmsweb.dao;

import com.mycompany.uomrmsweb.model.User;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author shanika
 */
public class UserDaoTest {
    @Test
    public void findByUsernameTestObject(){
        UserDaoImpl userDao = new UserDaoImpl();
        //give a user details from db
        User user = userDao.findByUsername("bill");
        System.out.println(user);
        assertNotNull("user not null", user);
        //assertEquals("username correct", "bill", user.getUsername());
        //assertEquals("password correct", "abc123", user.getPassword());
        //assertEquals("usertype correct", "Student", user.getUserType().toString());
    }
    
    @Test
    public void findByUsernameTestUsername(){
        UserDaoImpl userDao = new UserDaoImpl();
        //give a user details from db
        User user = userDao.findByUsername("bill");
        System.out.println("findByUsernameTestUsername:"+user.getUsername());
        assertEquals("username correct", "bill", user.getUsername());
    }
    
    @Test
    public void findByUsernameTestPassword(){
        UserDaoImpl userDao = new UserDaoImpl();
        //give a user details from db
        User user = userDao.findByUsername("bill");
        System.out.println("findByUsernameTestPassword:"+user.getPassword());
        assertEquals("password correct", "abc123", user.getPassword());
    }
    
    @Test
    public void findByUsernameTestUsertype(){
        UserDaoImpl userDao = new UserDaoImpl();
        //give a user details from db
        User user = userDao.findByUsername("bill");
        System.out.println("findByUsernameTestUsertype:"+user.getUserType().toString());
        assertEquals("usertype correct", "Student", user.getUserType().toString());
    }
}
