/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.marcelo.dao;

import com.marcelo.model.Conductor;
import java.util.List;

/**
 *
 * @author Luis
 */
public interface ConductorDAO {
    
    public List<Conductor> findAll();
    
    public Conductor insert(Conductor objConductor);
    
    public Conductor findById(Integer id);
    
    public Conductor updateByid(Integer id, Conductor objConductor);
    
    public Boolean deleteById(Integer id);
}
