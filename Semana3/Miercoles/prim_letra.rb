def first_letters(oracion)
  arr_or = oracion.split(" ")
  prim_letra_arr = []
  arr_or.each do |x| 
    prim_letra_arr.push(x.chars.first)
  end
prim_letra_arr
end

# Pruebas
p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]