
public void setup() 
{  
 Farm c= new Farm();
 c.animalSounds();
      
}  

class Farm  
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()     
  {       
    aBunchOfAnimals[0] = new Cow("cow","Elsie","moo");           
    aBunchOfAnimals[1] = new Chick("chick","cluck");       
    aBunchOfAnimals[2] = new Pig("pig","oink");    
  }         
  public void animalSounds()    
  {       
    for (int nI=0; nI < aBunchOfAnimals.length; nI++)      
    {          
     System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound());       
    }    
    System.out.println( "The cow is known as " + ((Cow)aBunchOfAnimals[0]).getName() );
  } 
}



class Cow implements Animal 
{     
  private String myType;     
  private String mySound; 
  private String myName;     
  public Cow(String type, String name, String sound)    
  {         
     myType = type;         
     mySound = sound; 
     myName  = name;    
  }     
  public Cow()    
  {         
     myType = "unknown";         
     mySound = "unknown";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
  public String getName(){return myName;}   
}


class Chick implements Animal 
{     
  private String myType;     
  private String mySound;      
  public Chick(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }     
  public Chick()    
  {         
     myType = "chick";         
     mySound = "cluck";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}


class Pig implements Animal 
{     
  private String myType;     
  private String mySound;      
  public Pig(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }     
  public Pig()    
  {         
     myType = "Pig";         
     mySound = "oink";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}





interface Animal 
  {    
    public String getSound();        
    public String getType(); 
  }   
