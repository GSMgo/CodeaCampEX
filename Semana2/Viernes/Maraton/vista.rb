require_relative 'pregunta'
require_relative 'tablero'  

class Vista

  def initialize
    @abc=0

  end

  def start
    puts "Bienvenido al Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta."
    puts "Listo?  Arranca el juego!"
  end

  def print_question(text)
    puts "Pregunta"
    puts text
  end

  def get_input
    print "Intento: "
    gets.chomp
  end

  def print_answer_correct
    puts "Correcto!"
  end

  def print_answer_incorrect
    puts "Incorrecto!"
  end

  def print_finish(correct, incorrect)
    puts "Acabaste:"
    puts "Tuviste #{correct} Correctas y #{incorrect} Incorrectas"
  end

end
