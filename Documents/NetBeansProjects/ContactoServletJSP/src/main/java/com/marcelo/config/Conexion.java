
package com.marcelo.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    private Connection jdbcConnection;
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    
    public Conexion(){
        this.jdbcURL= "jdbc:mysql://localhost:3306/contacto?useSSL=false";
        this.jdbcUsername= "root";
        this.jdbcPassword= "root";
           
    }
    
    public void conectar() throws SQLException{
        
        if (jdbcConnection == null || jdbcConnection.isClosed()){
        
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
                
            }
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        }
    
    }
    
    public void desconectar() throws SQLException{
        if(jdbcConnection != null && !jdbcConnection.isClosed()){
            jdbcConnection.close();
        }
    }
    
    public Connection getJdbcConnection() {
        return jdbcConnection;
    }
    
}
