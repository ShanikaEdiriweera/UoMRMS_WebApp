//this architecture is not good
//give connection to each method and close

package com.mycompany.uomrmsweb.dao;

import java.sql.Connection;
import java.sql.*;
import java.sql.DriverManager;
/**
 *
 * @author Shanika Ediriweera
 */
public final class MysqlConnect {
    
    private Connection connection = null;
    private static MysqlConnect db;
    
    private MysqlConnect() {
        String url= "jdbc:mysql://localhost:3306/";
        String dbName = "java_web_login";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "shanika";
        String password = "711246252";
        try {
            Class.forName(driver).newInstance();
            this.connection = (Connection)DriverManager.getConnection(url+dbName,userName,password);
        }catch (Exception sqle) {
            sqle.printStackTrace();
        }
    }
    
    /**
     *
     * @return MysqlConnect Database connection object
     */
    public static synchronized MysqlConnect getMysqlConnect() {
        if ( db == null ) {
            db = new MysqlConnect();
        }
        return db;
    }
    
    //getting the db connection from the MysqlConnect object
    public Connection getDBConnection() throws ClassNotFoundException,SQLException{
        return connection;
    }
}
