/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iaapp;
import java.sql.*;
import javax.swing.*;
public class MySQLConnect {
    Connection conn=null;
    public static Connection ConnectDB(){
        try{ //Connects the database and the program
            Class.forName("com.mysql.cj.jdbc.Driver"); //JDBC driver is used to connect the program and MySQL Database
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ia","root","root");
            
            return conn;
        }
    catch(ClassNotFoundException | SQLException e){
    JOptionPane.showMessageDialog(null,e);
    return null;
    }
    }
}

/**
 *
 * @author praty
 */
    

