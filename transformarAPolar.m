function cPolar=transformarAPolar(cBin)
  %ver si funcina complex(cBin.real,cBin.imag) para generar un complejo
  %aux=(cBin.real+cBin.imag*i);
  %cPolar.modulo=sqrt(((cBin.real)^2)+((cBin.imag)^2));
  aux=complex(cBin.real,cBin.imag);
  cPolar.modulo=abs(aux);
  
  %cPolar.argumento=angle(aux);
  
  %primer cuadrante
  if(cBin.real > 0 && cBin.imag > 0)
  cPolar.argumento=angle(aux);
  %cuarto cuadrante
  elseif(cBin.real > 0 && cBin.imag < 0)
  cPolar.argumento=angle(aux)+2*pi;
  %segundo cuadrante, si no sumo da bien.
  elseif(cBin.real < 0 && cBin.imag > 0)
  cPolar.argumento=angle(aux);
  %tercer cuadrante,funciona con 2pi,solo sumando pi no da bien el valor
  elseif(cBin.real < 0 && cBin.imag < 0)
  cPolar.argumento=angle(aux)+2*pi;
  endif
  
endfunction
