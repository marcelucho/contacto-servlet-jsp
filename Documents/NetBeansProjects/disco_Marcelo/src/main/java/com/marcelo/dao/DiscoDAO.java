
package com.marcelo.dao;

import com.marcelo.model.Disco;
import java.util.List;

public interface DiscoDAO{
    
    public List<Disco> findAll();
    
    public Disco insert(Disco objDisco);
    
    public Disco findById(Integer id);
   
    public Disco updateByid(Integer id, Disco objDisco);
    
    public Boolean deleteById(Integer id);
}
