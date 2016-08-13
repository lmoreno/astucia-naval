class AstuciaNaval
  attr_accessor :posicion
  attr_accessor :impacto

   def atacar_casilla coordenada
     coordenada == "C3"
   end

   def posicionar coordenada
     @posicion = coordenada
   end
end
