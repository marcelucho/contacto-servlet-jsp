
package com.marcelo.config;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private Connection conexionConJDBC;
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    
    public Conexion(){
        this.jdbcURL= "jdbc:mysql://localhost:3306/bd_conductor?useSSL=false";
        this.jdbcUsername = "root";
        this.jdbcPassword = "root";
                
    }
    
    public void conectar() throws SQLException{
        
        if (conexionConJDBC == null || conexionConJDBC.isClosed()){
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                
            } catch (ClassNotFoundException e) {                
                throw new SQLException(e);
            }
            conexionConJDBC = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } 
    }
    
    public void desconectar() throws SQLException{
        if(conexionConJDBC != null || !conexionConJDBC.isClosed()){        
            conexionConJDBC.close();
        }
    }
    
    public Connection getJdbcConnection(){
        return conexionConJDBC;
    }
    
    
}
