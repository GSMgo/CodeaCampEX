def decade(año)
  if año.between?(1900,1909)
    "Noughties"
  elsif año.between?(1910,1919)
    "Nineteen-tens"
  elsif año.between?(1920,1929)
    "Twenties"
  elsif año.between?(1930,1939)
    "Thirties"
  elsif año.between?(1940,1949)
    "Forties"
  elsif año.between?(1950,1959)
    "Fifties"
  elsif año.between?(1960,1969)
    "Sixties"
  elsif año.between?(1970,1979)
    "Seventies"
  elsif año.between?(1980,1989)
    "Eighties"
  elsif año.between?(1990,1999)
    "Nineties"
  end
end
    
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"