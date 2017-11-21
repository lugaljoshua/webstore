
package controller;

import entity.Kupci;
import model.KupciModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/kupci")
public class KupciController {
     @RequestMapping (value="/all", method=RequestMethod.GET)
    public String getAll(Model m){
       KupciModel model = new KupciModel();
       m.addAttribute("lst",model.getAll());
        
      return "kupci";
        
    }
    
    @RequestMapping (value="/remove", method=RequestMethod.GET)
    public String remove(@RequestParam(value ="id") int id)
    {
       KupciModel model = new KupciModel();
      Kupci e = model.getKup(id);
      model.remove(e);
        
      return "redirect:all.htm";
        
    }
    
     @RequestMapping (value="/edit", method=RequestMethod.GET)
    public String edit(@RequestParam(value ="id") int id, Model m)
    {
       KupciModel model = new KupciModel();
      Kupci e = model.getKup(id);
     m.addAttribute("kup",e);
        
      return "edit";
        
    }
    
    @RequestMapping (value="/update", method=RequestMethod.POST)
    public String update(@ModelAttribute(value="kupci") Kupci e)
    {
       KupciModel model = new KupciModel();
       model.edit(e);
        
      return "redirect:all.htm";
        
    }
    
     @RequestMapping (value="/create", method=RequestMethod.POST)
    public String create(@ModelAttribute(value="kupci") Kupci e)
    {
       KupciModel model = new KupciModel();
       model.create(e);
        
      return "redirect:all.htm";
        
    }
    
     @RequestMapping (value="/redirectCreate", method=RequestMethod.GET)
    public String redirectCreate()
    {
       
        
      return "create";
        
    } 
    
}
