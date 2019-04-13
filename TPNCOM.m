%%%%--------Estructura de comlejos---------
compBinomica.real=0;
compBinomica.imag=0;
compPolar.modulo=0;
compPolar.argumento=0;
%%%--------------------------
disp("Bienvenido a NCOM\n");
disp("Menu de Opciones");
disp("1.Suma de Nº Complejos");
disp("0.Salir");
opc=input("seleccione una opcion: ");
if(opc==1)
  comp1=input("ingrese el primer Nº complejo ");
  comp2=input("ingrese el segundo Nº complejo ");
  
  %compBinomica=guardarComplejo(comp1);
  %compBinomica.real=-5;
  %compBinomica.imag=2;
  %disp(compBinomica.real);
  %compPolar=transformarAPolar(compBinomica);
  %disp(compPolar.argumento);
  
  
  compPolar.modulo=2;
  compPolar.argumento=pi/6;
  compBinomica=transformarABinomica(compPolar);
  disp(compBinomica.imag);
  
endif
%%NOTA
%%falta ver como sera el formato de ingreso de los num complejos
%por el usuario, y apartir de alli hacer las validaciones y pasarlo a 
%la estructura, falta la correccion del argumento si es que se pasade 2pi

