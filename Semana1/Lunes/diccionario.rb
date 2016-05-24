def dictionary_sort
  arr = []
  puts "Escribe una palabra:"
  palabra = gets.chomp!
  arr.push(palabra)
  loop do
    puts "Escribe otra palabra(o presiona 'enter' para finalizar): "
    palabra = gets.chomp!
    if palabra == ""
      break
    else
      arr.push(palabra)
    end
  end
  arr.sort!
  puts "Felicidades! Tu diccionario tiene #{arr.size} palabras:"

  ordenado = arr.find.sort_by {|x| 
    x.downcase
  }
  ordenado.each do |x|
    p x
  end
end

dictionary_sort