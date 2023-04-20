
package com.marcelo.model;

public class Contacto {
    //Atributos del modelo
    private String nombre;
    private String apellido;
    private String email;
    private String descripcion;
    
    //Constructor vacio    
    public Contacto(){
            
    }
    
    public Contacto(String name){
        this.nombre= name;
        
    }
    
    // getter y setters
    
    public String getNombre(){
        return nombre;
    }
    public String getApellido(){
        return nombre;
    }
    public String getemail(){
        return nombre;
    }
    public String getDescripcion(){
        return nombre;
    }

    
    public void setNombre(String name){
        this.nombre = name;
    }
    public void setApellido(String ape){
        this.apellido.append(ape);
 = ape;
    }
    public void setEmail(String correo){
        this.email = correo;
    }
    public void setDescripcion(String descrip){
        this.descripcion = decrip;
    }
}
