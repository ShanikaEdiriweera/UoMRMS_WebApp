/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.uomrmsweb;

import com.mycompany.uomrmsweb.dao.DBHandler;
import com.mycompany.uomrmsweb.dao.DBHandlerTest;
import com.mycompany.uomrmsweb.dao.MysqlConnectTest;
import com.mycompany.uomrmsweb.dao.UserDaoTest;
import com.mycompany.uomrmsweb.model.UserTest;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

/**
 *
 * @author shanika
 */
public class TestRunner {
    public static void main(String[] args) throws SQLException {
        
        Result result = JUnitCore.runClasses(UserTest.class,UserDaoTest.class,DBHandlerTest.class,MysqlConnectTest.class);
        //Result result = JUnitCore.runClasses(MysqlConnectTest.class);
        //Result result = JUnitCore.runClasses(DBHandlerTest.class);
        //Result result = JUnitCore.runClasses(UserDaoTest.class);
        //Result result = JUnitCore.runClasses(UserTest.class);
        for (Failure failure : result.getFailures()) {
            System.out.println(failure.toString());
        }
        System.out.println(result.wasSuccessful());
    }
    
}
