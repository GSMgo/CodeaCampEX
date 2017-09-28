def binary_search
  max = 100
  min = 0
  tamaño = 50 
  empty_array = []
  puts "Piensa en un numero del 1 al 100"
  loop do 
    puts "El numero es menor a #{tamaño} si/no"
    respuesta = gets.chomp 
    if respuesta == "si"
      if empty_array.include?(tamaño)
        return  "Tu numero es #{tamaño}"
      end 
      empty_array<< tamaño
      max = tamaño
      tamaño = min + (max-min)/2
    elsif respuesta == "no"
      if empty_array.include?(tamaño)
        return "Tu numero es #{tamaño}"
      end 
      empty_array<< tamaño
      min = tamaño
      tamaño = min + (max-min)/2
    end 
    if min == max-2
      puts "Tu numero es #{min+1}"
      break
    end
  end 
end 
p binary_search