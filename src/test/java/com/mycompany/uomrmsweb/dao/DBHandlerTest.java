/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.uomrmsweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author shanika
 */
public class DBHandlerTest {
    @Test
    public void getDataStringParamTestObject(){
        //test with  a user from db
        DBHandler dBHandler = new DBHandler();
        ResultSet resultSet = dBHandler.getData("SELECT * FROM `APP_USER` WHERE `username` = 'bill'");
        System.out.println(resultSet.toString());
        assertNotNull("resultset not null", resultSet);
    }
    
    @Test
    public void getDataStringParamTestUsername(){
        try {
            DBHandler dBHandler = new DBHandler();
            //test with  a user from db
            ResultSet resultSet = dBHandler.getData("SELECT * FROM APP_USER WHERE username = 'bill'");
            resultSet.next();
            String username = resultSet.getString("username");
            System.out.println(username);
            assertEquals("username correct", "bill", username);
        } catch (SQLException ex) {
            Logger.getLogger(DBHandlerTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Test
    public void getDataStringParamTestPassword(){
        try {
            DBHandler dBHandler = new DBHandler();
            //test with  a user from db
            ResultSet resultSet = dBHandler.getData("SELECT * FROM APP_USER WHERE username = 'bill'");
            resultSet.next();
            String password = resultSet.getString("password");
            System.out.println(password);
            assertEquals("password correct", "abc123", password);
        } catch (SQLException ex) {
            Logger.getLogger(DBHandlerTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Test
    public void getDataStringParamTestUsertype(){
        try {
            DBHandler dBHandler = new DBHandler();
            //test with  a user from db
            ResultSet resultSet = dBHandler.getData("SELECT * FROM APP_USER WHERE username = 'bill'");
            resultSet.next();
            String usertype = resultSet.getString("user_type");
            System.out.println(usertype);
            assertEquals("usertype correct", "Student", usertype);
        } catch (SQLException ex) {
            Logger.getLogger(DBHandlerTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
