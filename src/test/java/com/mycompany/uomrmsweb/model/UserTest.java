/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.uomrmsweb.model;

import static org.junit.Assert.*;
import org.junit.Test;

/**
 *
 * @author shanika
 */
public class UserTest {
    @Test
    public void TestUserType(){
        //User user = new User(0, "username" , "password", "firstName", "lastName", "email", "Active", UserType.Student);
        User user = new User("1", "username","password" ,  "Shanika" , Gender.Male,UserType.Student, new Department(0, "name", new Faculty(0, "name")), "Active");
        assertEquals("usertype returned","Student",user.getUserType().toString());
    }
}
