def elefantes(numveces)
  1.upto(numveces) {|x| 
    if x == numveces 
      puts "#{x} elefante se columpiaba sobre la tela de un araña, y ups! y la telaraña se rompio!"
    else
      puts "#{x} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."
    end
  }
end

p elefantes(99)