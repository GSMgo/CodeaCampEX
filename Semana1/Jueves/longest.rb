# def longest(array_strings)
  
#   for i in 1...array_strings.size
#     tamaño_palabra = array_strings[i-1].length
#     tamaño_palabra2 = array_strings[i].length
#     mas = array_strings[i]

#     if tamaño_palabra2 > tamaño_palabra
#       mas = array_strings[i]
#       i += 1
#     else
#       mas = array_strings[i-1]
#       i+=1
#     end
#   end

#   mas

# end

# p longest(['gato', 'perro', 'elefante', 'jirafa']) == "elefante"
# p longest(['verde', 'rojo', 'negro', 'morado']) == "morado"

def longest (array_strings)
  mas_larga = ""
  array_strings.each do |palabra|
    if palabra.length > mas_larga.length
      mas_larga = palabra
    end
  end

mas_larga
end

p longest(['gato', 'perro', 'elefante', 'jirafa']) == "elefante"
p longest(['verde', 'rojo', 'negro', 'morado']) == "morado"
