/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.marcelo.dao;

import com.marcelo.model.Contacto;
import java.util.List;

/**
 *
 * @author Luis
 */
public interface ContactoDAO {
    //Metodo que devuelve el listado de objetos
    public List<Contacto> findAll();
    //Metodo que inserta el objeto a la BD
    public Contacto insert(Contacto objContacto);
    //Metodo que devuelve un objeto en base a su ID
    public Contacto findById(Integer id);
    //Metodo que modifica un objeto en la BD en base a su ID
    public Contacto updateByid(Integer id, Contacto objContacto);
    //Metodo que elimina un objeto en la BD en base a su ID
    public Boolean deleteById(Integer id);
    
}
