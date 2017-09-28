
def odd_indexed(arr)
  arr.select.each_with_index { |_, i| i.even? }
end

def long_strings(arr)
  arr.find_all do |x| 
    x.length > 4
  end
end

def start_with_h(arr)
  arr.find do |x|
    x.chars.first == "h"
  end
end

def capitalize_array(arr)
  arr.map do |x|
    x.capitalize!
  end
end

def group_by_starting_letter(arr)
   arr.group_by do |x|
      x.chars.first
    end
end

def number_of_r(str)
  str.count('r')
end


p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4