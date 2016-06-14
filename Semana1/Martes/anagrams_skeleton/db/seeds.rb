# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 

def canonical(palabra)
 var1 = palabra.downcase.split(//)
 var1.sort!
 var1.join("")
end 

File.open('words.txt').each do |line|
  Word.create(:palabra => line.chomp, :canonica => canonical(line.chomp))
end

# File.foreach('words.txt').with_index do |line, line_num|
#   Words.create(:palabra => line.chomp, :canonical => canonical(line.chomp))
# end



