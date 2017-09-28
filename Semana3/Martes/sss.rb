def double_char(str)
  contador = 0
  string = ""
  tamaño = str.length
  arr = []
  (0..tamaño).each do |x|
    arr.push(x)
  end
  str.each_byte do |x| 
      string.insert(contador, x)
  end
string
end

p double_char("String")