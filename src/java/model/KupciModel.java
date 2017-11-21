
package model;

import entity.Kupci;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;


public class KupciModel {
    public List<Kupci> getAll(){
        Session s=HibernateUtil.getSessionFactory().getCurrentSession();
        List<Kupci> lst = new ArrayList<Kupci>();
        try{
            s.beginTransaction();
            lst=s.createCriteria(Kupci.class).list();
            s.getTransaction().commit();
        }
         catch(Exception e)  {
                e.printStackTrace();
                        }     
        
             return lst;
        
    }
    
    public void create(Kupci e){
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
    public void remove(Kupci e){
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
    public void edit(Kupci e){
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
    
    public  Kupci getKup(int id){
         Session s=HibernateUtil.getSessionFactory().getCurrentSession();
         Kupci e = new Kupci();
        try{
          s.beginTransaction();
          e=(Kupci)s.get(Kupci.class, id);
          s.getTransaction().commit();
        }
        
        catch(Exception ex){
            ex.printStackTrace();
            s.getTransaction().rollback();
            
        }
        return e;
    }
}
