
package com.marcelo.model;

public class Usuario {
    private Integer id;
    private String nombre;
    private String email;
    private String nacionalidad;
    
    public Usuario(){};
    
    public void setNombre(String name){
        this.nombre = name;
    }
    public String getNombre(){
        return nombre;
    }

    public Integer getId() {
        return id;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }
    
    public void setEmail(String email){
        this.email= email;
    }
    public String getEmail(){
        return email;
    }
}
