package com.marcelo.dao;

import com.marcelo.config.Conexion;
import com.marcelo.model.Contacto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

public class ContactoDAOImpl implements ContactoDAO {

    private Conexion objConexion;
    private Connection objConnection;

    public ContactoDAOImpl() {
        objConexion = new Conexion();
    }

    @Override
    public List<Contacto> findAll() {

        String consulta = "Select * FROM contactos";

        List<Contacto> listado = new LinkedList<>();

        try {
            this.objConexion.conectar();
            this.objConnection = this.objConexion.getJdbcConnection();
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            // Ejecuta la consulta
            ResultSet rs = prest.executeQuery(consulta);

            Contacto objContacto;

            while (rs.next()) {
                objContacto = new Contacto();

                objContacto.setId(rs.getInt("id"));
                objContacto.setNombre(rs.getString("nombre"));
                objContacto.setApellido(rs.getString("apellido"));
                objContacto.setEmail(rs.getString("email"));
                objContacto.setDescripcion(rs.getString("descripcion"));

                listado.add(objContacto);

            }

        } catch (Exception e) {

            System.out.println("Error en la consulta");
        }

        return listado;

    }

    @Override
    public Contacto insert(Contacto objContacto) {
        String consulta = "INSERT INTO contactos (nombre, apellido, email, descripcion) VALUES (?,?,?,?)";
        try {
            this.objConexion.conectar();
            this.objConnection = this.objConexion.getJdbcConnection();
            // inicialización de la consulta
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            //Agregar los datos dentro de la consulta

            prest.setString(1, objContacto.getNombre());
            prest.setString(2, objContacto.getApellido());
            prest.setString(3, objContacto.getEmail());
            prest.setString(4, objContacto.getDescripcion());

            int count = prest.executeUpdate();
            ResultSet rs = null;
            rs = prest.executeQuery("SELECT LAST_INSERT_ID()");

            int autokey = -1;
            if (rs.next()) {
                autokey = rs.getInt("id");
                objContacto.setId(autokey);
                System.out.println("Ultimo id introducido" + autokey);

            } else {
                System.out.println("No existe dato de ID");
            }

        } catch (Exception e) {

            System.out.println("Error al insertar " + e);

        }
        return objContacto;
    }

    @Override
    public Contacto findById(Integer id) {
       String consulta = "SELECT * FROM contactos where id =?";
       Contacto objContacto = new Contacto();
        try {
            this.objConexion.conectar();
            this.objConnection = objConexion.getJdbcConnection();
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            prest.setInt(1,id);
            ResultSet rs = prest.executeQuery();
            
            while (rs.next()) {
                objContacto.setId(rs.getInt("id"));
                objContacto.setNombre(rs.getString("nombre"));
                objContacto.setApellido(rs.getString("apellido"));
                objContacto.setEmail(rs.getString("email"));
                objContacto.setDescripcion(rs.getString("descripcion"));
                               
            }
                    
        } catch (Exception e) {
            System.out.println("Error FindById" + e);
        }
       
       return objContacto;
    }

    @Override
    public Contacto updateByid(Integer id, Contacto objContacto) {
        
        String consulta = "UPDATE contactos SET nombre=?, apellido=?, email=?, descripcion=? WHERE id=?";
        
        try {
            this.objConexion.conectar();
            this.objConnection = this.objConexion.getJdbcConnection();
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            prest.setString(1, objContacto.getNombre());
            prest.setString(2, objContacto.getApellido());
            prest.setString(3, objContacto.getEmail());
            prest.setString(4, objContacto.getDescripcion());
            prest.setInt(5, id);
            int resultado = prest.executeUpdate();
            
            if(resultado == 1 ){
                System.out.println("Actualización satisfactoria");
                objContacto.setId(id);
            }else{
                objContacto.setId(0);
                System.out.println("No se actualizó el registro");
            }
        } catch (Exception e) {
            System.out.println("Error en UpdateById" + e);
            
        }
        return objContacto;
    }

    @Override
    public Boolean deleteById(Integer id) {
       String consulta = "DELETE FROM contactos WHERE id=?";
       
       Boolean returnValue = false;
       
        try {
            this.objConexion.conectar();
            this.objConnection = objConexion.getJdbcConnection();
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            prest.setInt(1, id);
            
            int resultado = prest.executeUpdate();
            if(resultado > 0){
                returnValue = true;
            }
            System.out.println("Eliminacion satisfatoria");                       
            
        } catch (Exception e) {
            System.out.println("Error en deleteById" + e);
        }
       
       return returnValue;
    }
}
