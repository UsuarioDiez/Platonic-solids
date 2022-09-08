#include "glass.inc"
#include "colors.inc"                       
#include "metals.inc" 
#include "textures.inc"
#include "woods.inc"
#include "colors.inc"
#include "finish.inc"
#include "math.inc" 


light_source{<1500,2500,-2500> color White} 
//background { color Brown } 

#declare Camera_0 = camera {/*ultra_wide_angle*/ angle 15      // front view
                            location  <4 , 6 ,-15>
                            right     x*image_width/image_height
                            look_at   <0.0 , 0.0 , 0.0>}

#declare Camera_1 = camera {/*ultra_wide_angle*/ angle 15   // diagonal view
                            location  <20.0 , 0.0 ,-10.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 0.5 , 0.0>}
#declare Camera_2 = camera {/*ultra_wide_angle*/ angle 90  //right side view
                            location  <6.0 , 1.0 , 0.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_3 = camera {/*ultra_wide_angle*/ angle 90        // top view
                            location  <0.0 , 4.0 ,-0.001>
                            right     x*image_width/image_height
                            look_at   <0.0 , 0.0 , 0.0>}

#fopen Tierra "cubo.xyz" read 

//=======================HEXAEDRO======================== 
#declare Hexaedro= 
union{ 
  #declare Hexa=array[11];
  #declare i=1;
  #declare j=1;
  #declare k=1;       
  #while (defined(Tierra)) 
  #read(Tierra,Vector)
  #declare Hexa[i]=Vector;
  #declare i=i+1; 
    
       sphere {Vector, 0.2 texture{pigment{color Blue} finish{phong 1}}}
  #end
  
  #while (j<=7) 
  #declare k=j+1;
  #while (k<=8)
  #if (vlength(Hexa[j]-Hexa[k])=2.0)
       cylinder {Hexa[j],Hexa[k], 0.05 texture{pigment{color Cyan} finish{phong 1}}} 
  #end
  #declare k=k+1;
  #end     
  #declare j=j+1; 
  #end
  
  }
    #fclose Tierra 
 
 //============================TETRAEDRO===========================  
 #fopen Fuego "Tetraedro.xyz" read  
#declare Tetraedro= 
union{ 
  #declare Tetra=array[7];
  #declare i=1;
  #declare j=1;
  #declare k=1;       
  #while (defined(Fuego)) 
  #read(Fuego,Vector)
  #declare Tetra[i]=Vector;
  #declare i=i+1; 
    
       sphere {Vector, 0.2 texture{pigment{color Blue} finish{phong 1}}}
  #end
  
  #while (j<=3) 
  #declare k=j+1;
  #while (k<=4)
       cylinder {Tetra[j],Tetra[k], 0.05 texture{pigment{color Cyan} finish{phong 1}}} 
  #declare k=k+1;
  #end     
  #declare j=j+1; 
  #end
  
  }
    #fclose Fuego 
    
//=================OCTAEDRO=========================     
    
 #fopen Aire "Octaedro.xyz" read  
#declare Octaedro= 
union{ 
  #declare Octa=array[8];
  #declare i=1;
  #declare j=1;
  #declare k=1;       
  #while (defined(Aire)) 
  #read(Aire,Vector)
  #declare Octa[i]=Vector;
  #declare i=i+1; 
    
       sphere {Vector, 0.2 texture{pigment{color Blue} finish{phong 1}}}
  #end
  
  #while (j<=5) 
  #declare k=j+1;
  #while (k<=6)
  #if (vlength(Octa[j]-Octa[k])=sqrt(2.0))
       cylinder {Octa[j],Octa[k], 0.05 texture{pigment{color Cyan} finish{phong 1}}}
  #end      
  #declare k=k+1;
  #end     
  #declare j=j+1; 
  #end
  
  }
    #fclose Aire 

//=====================ICOSAEDRO=========================    
 #fopen Agua "Icosaedro.xyz" read  
#declare Icosaedro= 
union{ 
  #declare Ico=array[14];
  #declare i=1;
  #declare j=1;
  #declare k=1;       
  #while (defined(Agua)) 
  #read(Agua,Vector)
  #declare Ico[i]=Vector;
  #declare i=i+1; 
    
       sphere {Vector, 0.2 texture{pigment{color Blue} finish{phong 1}}}
  #end
  
  #while (j<=11) 
  #declare k=j+1;
  #while (k<=12)
  #if (vlength(Ico[j]-Ico[k])-(sqrt(5)-1)<0.01)
       cylinder {Ico[j],Ico[k], 0.05 texture{pigment{color Cyan} finish{phong 1}}}
  #end      
  #declare k=k+1;
  #end     
  #declare j=j+1; 
  #end 
  
  }
    #fclose Agua 
    

//==========================DODECAEDRO=========================================    
   #fopen sagarpa "Dodecaedro.xyz" read  
#declare Dodecaedro= 
union{ 
  #declare Dode=array[22];
  #declare i=1;
  #declare j=1;
  #declare k=1;       
  #while (defined(sagarpa)) 
  #read(sagarpa,Vector)
  #declare Dode[i]=Vector;
  #declare i=i+1; 
    
       sphere {Vector, 0.2 texture{pigment{color Blue} finish{phong 1}}}
  #end
  
  #while (j<=19) 
  #declare k=j+1;
  #while (k<=20)
  #if (vlength(Dode[j]-Dode[k])-2/3<0.01)
       cylinder {Dode[j],Dode[k], 0.05 texture{pigment{color Cyan} finish{phong 1}}}
  #end      
  #declare k=k+1;
  #end     
  #declare j=j+1; 
  #end 
  
  }
    #fclose sagarpa 
    
 //==========================C-60====================================0   
    
    #fopen balon "C-60.xyz" read  
#declare C60= 
union{ 
  #declare CC=array[62];
  #declare i=1;
  #declare j=1;
  #declare k=1;       
  #while (defined(balon)) 
  #read(balon,Vector)
  #declare CC[i]=Vector;
  #declare i=i+1; 
    
       sphere {Vector, 0.1 texture{pigment{color Blue} finish{phong 1}}}
  #end
  
  #while (j<=59) 
  #declare k=j+1;
  #while (k<=60)
  #if (vlength(CC[j]-CC[k])-0.4126<0.01)
       cylinder {CC[j],CC[k], 0.03 texture{pigment{color Cyan} finish{phong 1}}}
  #end      
  #declare k=k+1;
  #end     
  #declare j=j+1; 
  #end 
  
  }
    #fclose balon
    
    
//=====================Elegir lo que se muestra========================             
    
//object{Tetraedro}    
//object{Hexaedro}
//object{Octaedro}
//object{Icosaedro} 
//object{Dodecaedro}
//object{C60}    

   
camera{Camera_0}
