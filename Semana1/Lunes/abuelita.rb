
def deaf_grandma(arg)
  arg == true ? "NO, NO DESDE 1983" : "HUH?! NO TE ESCUCHO, HIJO!" 
end

puts "Saluda a tu abuelita, hijo. Recuerda que está un poco sorda. Si crees que no te escucha, ¡GRÍTALE!. Si quieres dejar de hablarle grítale un BYE TQM"
your_arg = gets.chomp.to_s

until your_arg == 'BYE TQM' do
  a = true
  your_arg.each_char { |x| a = false if x != x.upcase }
  puts deaf_grandma(a)
  your_arg = gets.chomp.to_s
end

class Grandma

  attr_writer :your_arg

  def initialize(your_arg)
    @your_arg = your_arg
  end

  def deaf_grandma
    @a = true
    @your_arg.each_char { |x| @a = false if x != x.upcase }
    @a == true ? "NO, NO DESDE 1983" : "HUH?! NO TE ESCUCHO, HIJO!" 
  end
  
end


puts "Saluda a tu abuelita, hijo. Recuerda que está un poco sorda. Si crees que no te escucha, ¡GRÍTALE!. Si quieres dejar de hablarle grítale un BYE TQM"
  your_arg = gets.chomp.to_s

while if your_arg == 'BYE TQM'
        false
      elsif your_arg == 'BYE TQM BYE TQM BYE TQM'
        false
      else
        true
      end
  
  game = Grandma.new(your_arg)
  p game.deaf_grandma
  your_arg = gets.chomp.to_s
  
end


def deaf_grandma(your_arg)
  a = true
  your_arg.each_char { |x| a = false if x != x.upcase }
  a == true ? "NO, NO DESDE 1983" : "HUH?! NO TE ESCUCHO, HIJO!" 
end

puts "Saluda a tu abuelita, hijo. Recuerda que está un poco sorda. Si crees que no te escucha, ¡GRÍTALE!. Si quieres dejar de hablarle grítale un BYE TQM"
  your_arg = gets.chomp.to_s

while if your_arg == 'BYE TQM'
        false
      elsif your_arg == 'BYE TQM BYE TQM BYE TQM'
        false
      else
        true
      end
  
  p deaf_grandma(your_arg)
  your_arg = gets.chomp.to_s
end
  