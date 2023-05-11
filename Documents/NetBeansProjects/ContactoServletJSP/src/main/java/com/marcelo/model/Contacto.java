
package com.marcelo.model;

public class Contacto {
    //Atributos del modelo
    
    private Integer id;   
    private String nombre;
    private String apellido;
    private String email;
    private String descripcion;
    
    //Constructor vacio    
    public Contacto(){
            
    }
    // getter y setters

    public Integer getId() {
        return id;
    };    
    public String getNombre(){
        return nombre;
    };
    public String getApellido(){
        return apellido;
    };
    public String getEmail(){
        return email;
    };
    public String getDescripcion(){
        return descripcion;
    };

    public void setId(Integer id) {
        this.id = id;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public void setApellido(String apellido){
        this.apellido = apellido;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public void setDescripcion(String descrip){
        this.descripcion = descrip;
    }
}
