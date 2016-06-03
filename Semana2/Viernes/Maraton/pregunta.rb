require_relative 'tablero'
require_relative 'vista'

class Pregunta

  attr_reader :preguntas

  def initialize
    @preguntas = {
    "¿Quién sabía que no sabía nada?" => "Socrates"
    "¿En qué lugar del cuerpo se produce la insulina?" => "Pancreas"
    "¿Quién fue famoso esposo de Frida Kahlo?" => "Diego rivera"
    "¿Qué país no tiene al euro como moneda? (Portugal, Suiza, Francia)" =>  "Suiza"
    "¿Cuál es el grupo mayoritario dentro del islam?" => "Sunitas"
    "¿En cuántos estados pueden aparecer los elementos?" => "Cuatro"
  }
  end

end