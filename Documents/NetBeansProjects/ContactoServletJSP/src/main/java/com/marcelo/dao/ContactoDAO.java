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
    
    public List<Contacto> findAll();
    
    public Contacto insert(Contacto objContacto);
    
    public Contacto findById(Integer id);
    
    public Contacto updateByid(Integer id, Contacto objContacto);
    
    public Boolean deleteById(Integer id);
    
}
