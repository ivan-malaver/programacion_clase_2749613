
import math


A = float (input("ingrese valor del voltage RMS ")) 
B = float (input("ingrese valor de la frecuencia de trabajo  ")) 
C = float (input("ingrese valor de la resistencia  ")) 
D = float (input("ingrese valor de la bobina ")) 
E = float (input("ingrese valor ingrese el valor del condensador  ")) 
p = 3.1416
angVf =	0
angZL=90
angZC= float(-90)
ZJ = "j"


operacion = input ("ingrese 1 para circuito serie, 2 para circuito en paralelo ")

match operacion:
    case "1":
      XL = float( 2*(p*B*D))
      XC = float(1/(2*p*B*E))
      magZ = float(C**2 + ((XL)-(XC))**2)**(1/2)
      angZr = float (math.atan ((XL-XC)/C))
      angZg = float ((angZr)*180/p)
      I = float(A/magZ)
      I1= float(angVf-angZg)
      S = float(A*I)
      P = float(S*(math.cos (angZr)))
      Q = float(S*(math.sin(angZr)))
      fp = float(P/S)
     
      print ("Reactancia Inductiva XL", XL) 
      print ("Reactancia Capacitiva XC",XC) 
      print ("Cálculo de impedancia magZ", magZ) 
      print ("Cálculo de impedancia magZ radiales", angZr, "radiales" ) 
      print ("Cálculo de impedancia magZ grados", angZg, "grados" ) 
      print ("Potencia Aparente (S)", S,"VA")
      print ("Potencia Activa (P)", P, "W")
      print ("Potencia Reactiva (Q)",Q, "VAR")
      print ("PFactor de potencia (fp)", fp,"atraso")
      print ("I",I,"<",I1)
      print ("Z",magZ,"<",angZg)

      print("Cálculo de impedancias individuales")		
      print ("magZr",C, "\u03A9")
      print ("angZR","0","\u25E6") 
      print ("magZL",XL,"\u03A9")
      
      print ("angZL",angZL,"\u25E6")
      print ("magZC",XC,"\u03A9")
     
      print("angZC", angZC, "\u25E6")
      
      print("Cálculo de Tensiones (voltajes) individuales")
      VR= float (I*C)
      print ("VR",VR,"\u03A9")
      AngVR = float(angZg + I1)
      print ("AngVR", AngVR, "\u25E6")
      VL= float(I*XL)
      print("VL",VL,"\u03A9")
      AngVL = float(angZL+I1)
      print("AngVL",AngVL,"\u25E6")
      VC = float(XC*I)
      print("VC", VC, "\u03A9")
      AngVC = float(angZC + I1)
      print("AngVC",AngVC,"\u25E6")

    case "2":
       XL = float( 2*(p*B*D))
       XC = float(1/(2*p*B*E))
       IL= float(A/XL)
       IC= float(A/XC)
       IR= float(A/C)
       IT= float(((((IR)**2)+((((IL)-(IC))**2))))**(1/2))
       
       grad1= float(angVf - angZC)
       grad2= float(angVf - angZL)
       
       Zr= C
       Zr1= angVf
       Zr3 =(Zr,ZJ,Zr1)
       ZL= XL
       ZL1= angZL
       ZL3 =(ZL,ZJ,ZL1)
       ZC= XC
       ZC1= angZC
       ZC3 =(ZC,ZJ,ZC1)
       ZR1a= (1/Zr)
       ZL1a= (1/ZL)
       ZC1a= (1/ZC)
       ZR1g= (angVf/Zr)
       ZL1g= (angVf/grad1)
       ZC1g= (angVf/grad2)
       S = float(A*IT)
       P = float(S*(math.cos (grad1)))
       Q = float(S*(math.sin(grad2)))
       fp = float(P/S)
       #print(ZR1a, ZL1a,ZC1a,ZR1g,ZL1g,ZC1g)
       
       print(XL,angZL,"\u03A9")
       print(XC, angZC,"\u03A9")
       print(C,angVf,"\u03A9")
       print(grad1,grad2)
       print("Bobina",IL,"Amperios")
       print("condensador",IC,"Amperios")
       print("resistencia",IR,"Amperios")
       print("Corriente total",IT,"amperios")
       print(Zr3)
       print(ZL3)
       print(ZC3)
       print ("Potencia Aparente (S)", S,"VA")
       print ("Potencia Activa (P)", P, "W")
       print ("Potencia Reactiva (Q)",Q, "VAR")
       print ("PFactor de potencia (fp)", fp,"atraso")
       
       #magZ = float(1/(((1/XL))+((1/XL)))+((1/XC) +((1/XC)+((1/C) +((1/C))))))
       #print (magZ,"\u03A9")
       #magZ = float(1/(((1/XL)*(math.cos(angZL))+((1/XL)*(math.sin(angZL)))+((1/XC)*(math.cos(grad1) +((1/XC)*(math.sin(grad1)))+((1/C)*(math.cos(grad2) +((1/C)*(math.sin(grad2))))))))))
       #print (magZ,"\u03A9")
       
       
