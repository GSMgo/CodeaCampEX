def leap_year?(año)
  bisiesto = false
  bisiesto = true unless año % 4 != 0 || año % 100 == 0 
  if año % 400 == 0
    bisiesto = true
  end 
  bisiesto
end

# Pruebas

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true