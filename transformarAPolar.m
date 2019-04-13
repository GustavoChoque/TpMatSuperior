function cPolar=transformarAPolar(cBin)
  aux=(cBin.real+cBin.imag*i);
  %cPolar.modulo=sqrt(((cBin.real)^2)+((cBin.imag)^2));
  cPolar.modulo=abs(aux);
  cPolar.argumento=angle(aux);
endfunction
