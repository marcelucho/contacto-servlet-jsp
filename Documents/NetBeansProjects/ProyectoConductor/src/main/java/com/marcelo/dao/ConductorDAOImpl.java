
package com.marcelo.dao;

import com.marcelo.config.Conexion;
import com.marcelo.model.Conductor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

public class ConductorDAOImpl implements ConductorDAO {
    
    private Conexion objConexion;
    private Connection objConnection;
    
    public ConductorDAOImpl(){
        objConexion = new Conexion();
    }
    

    @Override
    public List<Conductor> findAll() {
        
        String Consulta = "SELECT * FROM tabla_conductor";
        List<Conductor> listado = new LinkedList<>();
        
        try {
            this.objConexion.conectar();
            this.objConnection = this.objConexion.getJdbcConnection();
            PreparedStatement prest = this.objConnection.prepareStatement(Consulta);
            // Ejecuta la consulta            
            ResultSet rs = prest.executeQuery(Consulta);
            Conductor objConductor;
            
            while (rs.next()) {
                
                objConductor = new Conductor();
                
                objConductor.setId(rs.getInt("id_cbd"));
                objConductor.setNombre(rs.getString("nombre_cbd"));
                objConductor.setApellido(rs.getString("apellido_cbd"));
                objConductor.setNacionalidad(rs.getString("nacionalidad_cbd"));
                objConductor.setDomicilio(rs.getString("domicilio_cbd"));
                objConductor.setCiudad(rs.getString("ciudad_cbd"));
                objConductor.setPais(rs.getString("pais_cbd"));
                objConductor.setFechaNacimiento(rs.getString("fechaNacimiento_cbd"));
                objConductor.setDocIdentidad(rs.getString("docIdentidad_cbd"));
                objConductor.setCatLicencia(rs.getString("catLicencia_cbd"));
                objConductor.setNumLicencia(rs.getString("numLicencia_cbd"));
                objConductor.setTelefono(rs.getString("telefono_cbd"));
                objConductor.setGrupoSangre(rs.getString("grupoSangre_cbd"));
                objConductor.setEmail(rs.getString("email_cbd"));
                objConductor.setEmpresa(rs.getString("empresa_cbd"));
                
                listado.add(objConductor);
                
            }            
            
        } catch (Exception e) {
            System.err.println("Error en la consulta");
        }
        
        return listado;
        
    }

    @Override
    public Conductor insert(Conductor objConductor) {
       String consulta = "INSERT INTO tabla_conductor (nombre_cbd, apellido_cbd, nacionalidad_cbd, domicilio_cbd, ciudad_cbd, pais_cbd, fechaNacimiento_cbd, docIdentidad_cbd, catLicencia_cbd, numLicencia_cbd, telefono_cbd, grupoSangre_cbd, email_cbd, empresa_cbd) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
       
        try {
            this.objConexion.conectar();
            this.objConnection = this.objConexion.getJdbcConnection();
            
            PreparedStatement prest = this.objConnection.prepareStatement(consulta);
            
            prest.setString(1, objConductor.getNombre());
            prest.setString(2, objConductor.getApellido());
            prest.setString(3, objConductor.getNacionalidad());
            prest.setString(4, objConductor.getDomicilio());
            prest.setString(5, objConductor.getCiudad());
            prest.setString(6, objConductor.getPais());
            prest.setString(7, objConductor.getFechaNacimiento());
            prest.setString(8, objConductor.getDocIdentidad());
            prest.setString(9, objConductor.getCatLicencia());
            prest.setString(10, objConductor.getNumLicencia());
            prest.setString(11, objConductor.getTelefono());
            prest.setString(12, objConductor.getGrupoSangre());
            prest.setString(13, objConductor.getEmail());
            prest.setString(14, objConductor.getEmpresa());

            
            int count = prest.executeUpdate();
            ResultSet rs = null;
            rs = prest.executeQuery("SELECT LAST_INSERT_ID()");
            
            int autokey = -1;
            if (rs.next()){
                autokey = rs.getInt("id_cbd");
                objConductor.setId(autokey);
                System.err.println("Ultimo id introducido" + autokey);
                
            } else {
                System.out.println("No existe dato de ID");
            }
            
        } catch (Exception e) {
            System.out.println("Error al insertar ---->" + e );
        }
        
        return objConductor;
    }

    @Override
    public Conductor findById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Conductor updateByid(Integer id, Conductor objConductor) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Boolean deleteById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
}
