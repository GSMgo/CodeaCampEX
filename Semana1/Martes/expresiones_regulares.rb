$arr = ["1234-567-890","1111-222-333","1234-123-123"]

# Regresa true si encuentra un numero de cuenta.

def acc_exist?(string)
   exist = true
   acc = string.scan(/\d{4}-\d{3}-\d{3}/)
   acc.each do |ce|
      $arr.each do |co|
         if co == ce 
            exist = true
            break
         else
            exist = false
         end
      end
   end
   exist
end

p acc_exist?("Esto es un string 1111-222-333")

# Regresa un numero de cuenta si existe dentro del string y nil en el caso contrario.
def get_acc(string)
   acc_found = string.scan(/\d{4}-\d{3}-\d{3}/)
   if acc_found == []
      return nil
   end
   acc_found
end

p get_acc("Esto es un string 1111-222-333")

# Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
def get_accs(string)
   acc_found = string.scan(/\d{4}-\d{3}-\d{3}/)
end

p get_accs("Esto es un string 1111-222-333")

# Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros
# siete numeros. ej. "XXXX-XXX-234"

def hide_acc(string)
   x = string.gsub(/\d{4}-\d{3}-/,"XXXX-XXX-")
end

p hide_acc("Esto es un string 1111-222-333")

# Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez 
# de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. 
# Si encuentra un numero de menos dígitos no debería remplazarlo.

def format_acc(string)
   # string.gsub(/\d{10}/, '\\1-')
   #ten_digits_dots = 
   dots_acc = string.gsub(/\d{4}.\d{3}.\d{3}/) do |acc|
      acc[0..3] + "-" + acc[5..7] + "-" + acc[9..11]
   end
   dots_acc.gsub(/\d{9}/) do |acc|
      acc[0..3] + "-" + acc[4..6] + "-" + acc[7..9]
   end
end

p format_acc("1234.567.898")
p format_acc("1234898")
p format_acc("1234567898")

















