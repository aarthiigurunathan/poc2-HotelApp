package util.dao;

import java.io.*;
import java.sql.*;
import java.util.Properties;

public class Database_Connection {

	public static Connection initializeDatabase()
	        throws SQLException, ClassNotFoundException, FileNotFoundException, IOException
	    {

            Properties props = new Properties();
            props.load(new FileInputStream("D:\\practise\\Java_practise\\PoC2 - Hotel App\\demo.properties"));

            String dbDriver = "com.mysql.jdbc.Driver";
            String theUser = props.getProperty("user");
            String thePassword = props.getProperty("password");
            String theDburl = props.getProperty("dburl");


            Class.forName(dbDriver);
            Connection conn = DriverManager.getConnection(theDburl, theUser, thePassword);

            System.out.println("Connecting to database...");
            System.out.println("Database URL: " + theDburl);
            System.out.println("User: " + theUser);

	        return conn;
	    }
}
