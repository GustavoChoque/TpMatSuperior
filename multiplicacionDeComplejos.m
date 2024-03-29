function total=multiplicacionDeComplejos(valor1,valor2)
  %Opcion 1, como lo vimos en clase
  %total.real=(valor1.real*valor2.real)-(valor1.imag*valor2.imag);
  %total.imag=(valor1.real*valor2.imag)+(valor1.imag*valor2.real);
  
  %opcion 2, delego en el lenguaje
  %aux=complex(valor1.real,valor1.imag)*complex(valor2.real,valor2.imag);
  %total.real=real(aux);
  %total.imag=imag(aux);
  
  %opcion 3, si me lo pasan en polar (es lo que usaremos)
  total.modulo=valor1.modulo*valor2.modulo;
  total.argumento=valor1.argumento+valor2.argumento;
  
endfunction