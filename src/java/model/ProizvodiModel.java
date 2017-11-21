
package model;

import entity.Proizvodi;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;


public class ProizvodiModel {
     public List<Proizvodi> getAll(){
        Session s=HibernateUtil.getSessionFactory().getCurrentSession();
        List<Proizvodi> lst = new ArrayList<Proizvodi>();
        try{
            s.beginTransaction();
            lst=s.createCriteria(Proizvodi.class).list();
            s.getTransaction().commit();
        }
         catch(Exception e)  {
                e.printStackTrace();
                        }     
        
             return lst;
        
    }
    
    public void create(Proizvodi e){
         Session s=HibernateUtil.getSessionFactory().getCurrentSession();
        try{
          s.beginTransaction();
          s.save(e);
          s.getTransaction().commit();
        }
        
        catch(Exception ex){
            ex.printStackTrace();
            s.getTransaction().rollback();
            
        }
    }
    public void remove(Proizvodi e){
         Session s=HibernateUtil.getSessionFactory().getCurrentSession();
        try{
          s.beginTransaction();
          s.delete(e);
          s.getTransaction().commit();
        }
        
        catch(Exception ex){
            ex.printStackTrace();
            s.getTransaction().rollback();
            
        }
    }
    public void edit(Proizvodi e){
         Session s=HibernateUtil.getSessionFactory().getCurrentSession();
        try{
          s.beginTransaction();
          s.update(e);
          s.getTransaction().commit();
        }
        
        catch(Exception ex){
            ex.printStackTrace();
            s.getTransaction().rollback();
            
        }
    }
    
    public  Proizvodi getPro(int id){
         Session s=HibernateUtil.getSessionFactory().getCurrentSession();
         Proizvodi e = new Proizvodi();
        try{
          s.beginTransaction();
          e=(Proizvodi)s.get(Proizvodi.class, id);
          s.getTransaction().commit();
        }
        
        catch(Exception ex){
            ex.printStackTrace();
            s.getTransaction().rollback();
            
        }
        return e;
    }
}
