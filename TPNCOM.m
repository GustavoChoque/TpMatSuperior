%%%%--------Estructura de comlejos---------
compBinomica1.real=0;
compBinomica1.imag=0;
compPolar1.modulo=0;
compPolar1.argumento=0;

compBinomica2.real=0;
compBinomica2.imag=0;
compPolar2.modulo=0;
compPolar2.argumento=0;

totalBinomica.real=0;
totalBinomica.imag=0;

totalPolar.modulo=0;
totalPolar.argumento=0;
%%seingresa(nreal)+(nima)i para binomica y [modulo,argumento] para la polar
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
  
  if(isvector(comp1) & length(comp1)==2) %& !iscomplex(comp1) )
  compPolar1=guardarComplejoPolar(comp1);
  compBinomica1=transformarABinomica(compPolar1);
 else
  compBinomica1=guardarComplejo(comp1);
  compPolar1=transformarAPolar(compBinomica1);
endif

if(isvector(comp2) & length(comp1)==2) %& !iscomplex(comp2))
  compPolar2=guardarComplejoPolar(comp2);
  compBinomica2=transformarABinomica(compPolar2);
 else
  compBinomica2=guardarComplejo(comp2);
  compPolar2=transformarAPolar(compBinomica2);
  endif
  %disp(comp1(1));
  %disp(comp1(2));
  %compPolar.modulo=2;
  %compPolar.argumento=pi/6;
  %compBinomica=transformarABinomica(compPolar);
  %disp(compBinomica.imag);
  %disp(comp1);
  %disp(comp2);
  %disp(compPolar1);
  %disp(compBinomica1);
  %totalBinomica=multiplicacionDeComplejos(compBinomica1,compBinomica2);
  %totalPolar=transformarAPolar(totalBinomica);
  %disp(totalBinomica);
  %disp(totalPolar);
  totalPolar=cocienteDeComplejos(compPolar1,compPolar2);
  totalBinomica=transformarABinomica(totalPolar);
  disp(totalBinomica);
  disp(totalPolar);
  
endif
%%NOTA
%%falta ver como sera el formato de ingreso de los num complejos
%por el usuario, y apartir de alli hacer las validaciones y pasarlo a 
%la estructura, falta la correccion del argumento si es que se pasade 2pi