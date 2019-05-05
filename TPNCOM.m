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
opc=100;
while(opc~=0)
disp("\nBienvenido a NCOM\n");
disp("Menu de Opciones");
disp("1.Operaciones Basicas");
disp("2.Operaciones Avanzadas");
disp("3.Suma Fasores");
disp("0.Salir");
opc=input("seleccione una opcion: ");
    switch(opc)
    %if(opc==1)
    case 1
    disp("##########################################");
    disp("OPERACIONES BASICAS");
    disp("Binomica: a+bi, Polar: [mod,arg]");
    disp("------------------------------------------");
    disp("1.Suma de Nº Complejos");
    disp("2.Resta de Nº Complejos");
    disp("3.Multiplicacion de Nº Complejos");
    disp("4.Cociente de Nº Complejos");
    opcSubmenu=input("seleccione una opcion: ");
    comp1=input("ingrese el primer Nº complejo ");
    comp2=input("ingrese el segundo Nº complejo ");
    %%------------------convesion y guardado de numeros------------
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

    %%%%------------------------------------------
              switch(opcSubmenu)
                case 1
                                
                totalBinomica=sumaDeComplejos(compBinomica1,compBinomica2);
                totalPolar=transformarAPolar(totalBinomica);
                
                case 2
                totalBinomica=restaDeComplejos(compBinomica1,compBinomica2);
                totalPolar=transformarAPolar(totalBinomica);
                case 3
                %totalBinomica=multiplicacionDeComplejos(compBinomica1,compBinomica2);
                %totalPolar=transformarAPolar(totalBinomica);
                totalPolar=multiplicacionDeComplejos(compPolar1,compPolar2);
                totalBinomica=transformarABinomica(totalPolar);
                case 4
                totalPolar=cocienteDeComplejos(compPolar1,compPolar2);
                totalBinomica=transformarABinomica(totalPolar);
                otherwise
                disp("Opcion incorrecta\n");
              endswitch
              disp(totalBinomica);
                disp(totalPolar);
      
  case 2
    disp("En construccion\n");
  case 3
    disp("En construccion\n");
  case 0  
  disp("Salio de la aplicacion");
  otherwise
    disp("Opcion incorrecta\n");
    endswitch
endwhile
%%NOTA
%%falta ver como sera el formato de ingreso de los num complejos
%por el usuario, y apartir de alli hacer las validaciones y pasarlo a 
%la estructura, falta la correccion del argumento si es que se pasade 2pi