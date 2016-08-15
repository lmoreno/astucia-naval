class AstuciaNaval
  attr_accessor :posicion
  attr_accessor :impacto

  @ataques_realizados = []
  @ataques_recibidos = []

   def realizar_ataque coordenada
     @impacto = coordenada == @posicion
   end

   def posicionar coordenada
     @posicion = coordenada
   end
end
