function cBinomica=transformarABinomica(cPolar)
  %%hago las restriciones porque sin y cos no me devuelve el valor correcto
  %%en donde se hacen cero en radianes, lo cambio a grados en esos casos
  if(mod(cPolar.argumento,pi)==0)
  cBinomica.real=cPolar.modulo*cos(cPolar.argumento);
  cBinomica.imag=cPolar.modulo*sind(rad2deg(cPolar.argumento));
  elseif(mod(cPolar.argumento,pi/2)==0)
  cBinomica.real=cPolar.modulo*cosd(rad2deg(cPolar.argumento));
  cBinomica.imag=cPolar.modulo*sin(cPolar.argumento);
  else
  cBinomica.real=cPolar.modulo*cos(cPolar.argumento);
  cBinomica.imag=cPolar.modulo*sin(cPolar.argumento);
  endif
endfunction
