
package com.marcelo.model;

public class Disco {
    private Integer id;
    private String autor;
    private String titulo;
    private String formato;
    private String genero;
    private String duracion;
    
    
    //public Disco(){
        
   // }

    public Integer getId() {
        return id;
    }

    public String getAutor() {
        return autor;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getFormato() {
        return formato;
    }

    public String getGenero() {
        return genero;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }
    
    
}
