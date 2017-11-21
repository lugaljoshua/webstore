
package controller;

import entity.Proizvodi;
import model.ProizvodiModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/proizvodi1")
public class ProizvodiController {
    @RequestMapping (value="/all1", method=RequestMethod.GET)
    public String getAll(Model m){
       ProizvodiModel model = new ProizvodiModel();
       m.addAttribute("lst1",model.getAll());
        
      return "proizvodi1";
        
    }
    
    @RequestMapping (value="/remove1", method=RequestMethod.GET)
    public String remove(@RequestParam(value ="id") int id)
    {
       ProizvodiModel model = new ProizvodiModel();
      Proizvodi e = model.getPro(id);
      model.remove(e);
        
      return "redirect:all1.htm";
        
    }
    
     @RequestMapping (value="/edit1", method=RequestMethod.GET)
    public String edit(@RequestParam(value ="id") int id, Model m)
    {
       ProizvodiModel model = new ProizvodiModel();
      Proizvodi e = model.getPro(id);
     m.addAttribute("pro",e);
        
      return "edit1";
        
    }
    
    @RequestMapping (value="/update1", method=RequestMethod.POST)
    public String update(@ModelAttribute(value="proizvodi") Proizvodi e)
    {
       ProizvodiModel model = new ProizvodiModel();
       model.edit(e);
        
      return "redirect:all1.htm";
        
    }
    
     @RequestMapping (value="/create1", method=RequestMethod.POST)
    public String create(@ModelAttribute(value="proizvodi") Proizvodi e)
    {
       ProizvodiModel model = new ProizvodiModel();
       model.create(e);
        
      return "redirect:all1.htm";
        
    }
    
     @RequestMapping (value="/redirectCreate1", method=RequestMethod.GET)
    public String redirectCreate1()
    {
       
        
      return "create1";
        
    } 
}
