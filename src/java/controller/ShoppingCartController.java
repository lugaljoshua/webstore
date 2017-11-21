
package controller;

import entity.Item;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import model.ProizvodiModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/shoppingcart")

public class ShoppingCartController {
    private final ProizvodiModel model = new ProizvodiModel();
    @RequestMapping (value="/ordernow/{id}", method=RequestMethod.GET)
    public String ordernow(@PathVariable(value="id") int id,HttpSession session){
      if(session.getAttribute("cart")==null){
          List<Item> cart = new ArrayList<Item>();
          cart.add(new Item(this.model.getPro(id),1));
          session.setAttribute("cart", cart);
      }else{
         List<Item> cart = (List<Item>)session.getAttribute("cart");
         int index = isExisting(id,session);
         if(index==-1)
         cart.add(new Item(this.model.getPro(id),1));
         else{
             int kolicina = cart.get(index).getKolicina()+1;
             cart.get(index).setKolicina(kolicina);
         }
          session.setAttribute("cart", cart);
      }
        
      return "cart";
    
    } 
    @RequestMapping (value="/delete/{id}", method=RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id,HttpSession session){
         List<Item> cart = (List<Item>)session.getAttribute("cart");
         int index = isExisting(id,session);
         cart.remove(index);
        session.setAttribute("cart", cart);
        return "cart";
        
        
    }
    
    
    
    
    
    private int isExisting(int id, HttpSession session){
         List<Item> cart = (List<Item>)session.getAttribute("cart");
         
         for(int i =0;i<cart.size();i++)
             if(cart.get(i).getProizvodi().getIdproizvodi()==id)
                 return i;
        return -1;
    }
}
