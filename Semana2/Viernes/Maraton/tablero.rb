 require_relative 'pregunta'
 require_relative 'vista'

class Tablero

  def initialize
    @vista = Vista.new
    @p = Pregunta.new
    @correct_answers = 0
    @incorrect_answers = 0

    @vista.start
    game
  end

  def game
    contador = 0
    loop do
      get_pregunta(contador)
      if @vista.get_input == get_respuesta(contador)
        @vista.print_answer_correct
        @correct_answers += 1
      else
        @vista.print_answer_incorrect
        @incorrect_answers += 1
      end
      contador += 1
      if contador == get_hash_length
        return @vista.print_finish(@correct_answers, @incorrect_answers)
      end
    end
  end

  def get_pregunta(index)
    texto = @p.preguntas.keys[index]
    @vista.print_question(texto)
  end

  def get_respuesta(index)
    respuesta = @p.preguntas.values[index]
  end

  def get_hash_length
    @p.preguntas.length
  end
end

a = Tablero.new