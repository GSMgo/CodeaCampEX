def shortest (array_strings)
  mas_corta = array_strings[0]
  array_strings.each do |palabra|
    if palabra.length < mas_corta.length
      mas_corta = palabra
    end
  end

mas_corta
end

p shortest(['gato', 'perro', 'elefante', 'jirafa']) == "gato"
p shortest(['verde', 'rojo', 'negro', 'morado']) == "rojo"
