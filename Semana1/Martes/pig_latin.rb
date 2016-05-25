# una plabra
def pig_latin(str)
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(str[0])
    str + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  else
    str # return unchanged
  end
end
p pig_latin("hola")
p pig_latin("como")
p pig_latin("estas")

def pig_latin_sentence(str)
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  separ = str.split
  str2 = ""
  separ.map do |x|
    if vowels.include?(x[0])
      str2 << x + 'ay '
    elsif consonants.include?(x[0]) && consonants.include?(x[1])
      str2 << x[2..-1] + x[0..1] + 'ay '
    elsif consonants.include?(x[0])
      str2 << x[1..-1] + x[0] + 'ay '
    else
      x # return unchanged
    end
  end
str2
end

p pig_latin_sentence("hola como estas")


