def multiplication_tables(num)
    (1..num).each do |numero| 
      for i in 1..10
        print (numero * i).to_s + "\t" 
      end
    puts    
  end
end

p "Escribe un numero"
n = gets.chomp!.to_i
multiplication_tables(n)
