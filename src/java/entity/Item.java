
package entity;


public class Item   {
    
   private Proizvodi proizvodi = new Proizvodi();
   
    private int kolicina; 

    public Proizvodi getProizvodi() {
        return proizvodi;
    }

    public void setProizvodi(Proizvodi proizvodi) {
        this.proizvodi = proizvodi;
    }

    public int getKolicina() {
        return kolicina;
    }

    public void setKolicina(int kolicina) {
        this.kolicina = kolicina;
    }

   public Item(Proizvodi proizvodi, int kolicina){
       this.proizvodi=proizvodi;
       this.kolicina=kolicina;
   }
      public Item(){
          
      }
      
      
     
      
      
}
