
package com.marcelo.model;

public class Usuario {
    private String nombre;
    private String email;
    
    public Usuario(){};
    
    public void setNombre(String name){
        this.nombre = name;
    }
    public String getNombre(){
        return nombre;
    }
    public void setEmail(String email){
        this.email= email;
    }
    public String getEmail(){
        return email;
    }
}
