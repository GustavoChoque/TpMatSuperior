function cBinomica=transformarABinomica(cPolar)
  cBinomica.real=cPolar.modulo*cos(cPolar.argumento);
  cBinomica.imag=cPolar.modulo*sin(cPolar.argumento);
endfunction
