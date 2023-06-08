
package com.marcelo.dao;

import com.marcelo.config.Conexion;
import com.marcelo.model.Disco;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

public class DIscoDAOImpl implements DiscoDAO{
    private Conexion objConexion;
    private Connection objConnection;

    public DIscoDAOImpl() {
        objConexion = new Conexion();
    }
    
    @Override
    public List<Disco> findAll() {

        String consulta = "Select * FROM discos";

        List<Disco> listado = new LinkedList<>();
       
    try {
            this.objConexion.conectar();
            this.objConnection = this.objConexion.getJdbcConnection();
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            // Ejecuta la consulta
            ResultSet rs = prest.executeQuery(consulta);

            Disco objDisco;

            while (rs.next()) {
                objDisco = new Disco();

                objDisco.setId(rs.getInt("id"));
                objDisco.setAutor(rs.getString("autor"));
                objDisco.setTitulo(rs.getString("titulo"));
                objDisco.setFormato(rs.getString("formato"));
                objDisco.setGenero(rs.getString("genero"));
                objDisco.setDuracion(rs.getString("duracion"));


                listado.add(objDisco);

            }

        } catch (Exception e) {

            System.out.println("Error en la consulta");
        }

        return listado;

    }

    @Override
    public Disco insert(Disco objDisco) {
        
         String consulta = "INSERT INTO discos (autor, titulo, formato, genero, duracion) VALUES (?,?,?,?,?)";
         
         
        try {
            this.objConexion.conectar();
            this.objConnection = this.objConexion.getJdbcConnection();
            // inicialización de la consulta
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            //Agregar los datos dentro de la consulta

            prest.setString(1, objDisco.getAutor());
            prest.setString(2, objDisco.getTitulo());
            prest.setString(3, objDisco.getFormato());
            prest.setString(4, objDisco.getGenero());
            prest.setString(5, objDisco.getDuracion());


            int count = prest.executeUpdate();
            ResultSet rs = null;
            rs = prest.executeQuery("SELECT LAST_INSERT_ID()");

            int autokey = -1;
            if (rs.next()) {
                autokey = rs.getInt("id");
                objDisco.setId(autokey);
                System.out.println("Ultimo id introducido" + autokey);

            } else {
                System.out.println("No existe dato de ID");
            }

        } catch (Exception e) {

            System.out.println("Error al insertar " + e);

        }
        return objDisco;
    }
    

    @Override
    public Disco findById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Disco updateByid(Integer id, Disco objDisco) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Boolean deleteById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
        
        
        
        
}
