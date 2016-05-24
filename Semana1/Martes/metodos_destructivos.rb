#metodo para generar el string en mayusculas y minusculas
def up_down_case(str)
   down = str.downcase
   resp = ""
   str.each_char do |x|
      if str.index(x).to_i % 2 == 0
         resp << x.upcase
      else 
         resp << x
      end
   end
   resp
end

def up_down_case!(str)
   $name = up_down_case(str)
end


p up_down_case("String")

$name = "Juan"

puts "Valor de name: #{$name}"

puts "Llamando al método up_down_case en name : #{up_down_case($name)}"

puts "Valor de name despues de pasarlo por up_down_case: #{$name}"

puts "Llamando al método up_down_case! en name : #{up_down_case!($name)}"

puts "Valor de name después de pasarlo por up_down_case!: #{$name}"