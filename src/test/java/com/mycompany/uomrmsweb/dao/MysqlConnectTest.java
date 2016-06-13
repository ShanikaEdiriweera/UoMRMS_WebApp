/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.uomrmsweb.dao;

import java.sql.SQLException;
import org.junit.Test;
import static org.junit.Assert.*;
/**
 *
 * @author shanika
 */
public class MysqlConnectTest {
    @Test
    public void getMysqlConnectTest(){
        assertNotNull(MysqlConnect.getMysqlConnect());
    }
    
    @Test
    public void getDBConnectionTest() throws ClassNotFoundException, SQLException{
        assertNotNull(MysqlConnect.getMysqlConnect().getDBConnection());
    }
}
