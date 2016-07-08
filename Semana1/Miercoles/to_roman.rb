def to_roman(num)
  roman_hash = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  resultado = ""

  loop do 
    case num
    when roman_hash.keys[0]..100000
      resultado << roman_hash.values[0]
      num -= roman_hash.keys[0]
    when roman_hash.keys[1]..999
      resultado << roman_hash.values[1]
      num -= roman_hash.keys[1]
    when roman_hash.keys[2]..899
      resultado << roman_hash.values[2]
      num -= roman_hash.keys[2]
    when roman_hash.keys[3]..499
      resultado << roman_hash.values[3]
      num -= roman_hash.keys[3]
    when roman_hash.keys[4]..399
      resultado << roman_hash.values[4]
      num -= roman_hash.keys[4]
    when roman_hash.keys[5]..99
      resultado << roman_hash.values[5]
      num -= roman_hash.keys[5]
    when roman_hash.keys[6]..89
      resultado << roman_hash.values[6]
      num -= roman_hash.keys[6]
    when roman_hash.keys[7]..49
      resultado << roman_hash.values[7]
      num -= roman_hash.keys[7]
    when roman_hash.keys[8]..39
      resultado << roman_hash.values[8]
      num -= roman_hash.keys[8]
    when roman_hash.keys[9]..9
      resultado << roman_hash.values[9]
      num -= roman_hash.keys[9]
    when roman_hash.keys[10]..8
      resultado << roman_hash.values[10]
      num -= roman_hash.keys[10]
    when roman_hash.keys[11]
      resultado << roman_hash.values[11]
      num -= roman_hash.keys[11]
    when roman_hash.keys[12]..3
      resultado << roman_hash.values[12]
      num -= roman_hash.keys[12]
    when 0
      break
    end
  end
  resultado
end


a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 


def to_roman2(num)
    roman_hash = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  str = ""
  arr = roman_hash.keys
  arr.each do |a| 
    arr.map do |x|
      num >= x ? str << roman_hash[x] : next
      num -= x
    end
  end
  str
end


a = to_roman2(1) == "I"
b = to_roman2(3) == "III"  
c = to_roman2(4) == "IV"
d = to_roman2(9) == "IX"
e = to_roman2(13) == "XIII"
f = to_roman2(14) == "XIV"
g = to_roman2(944) == "CMXLIV"
h = to_roman2(1453) == "MCDLIII"
i = to_roman2(1646) == "MDCXLVI"

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman2(1)}"
puts "| #{b} |3     | III      | #{to_roman2(3)}"
puts "| #{c} |4     | IV       | #{to_roman2(4)}"
puts "| #{d} |9     | IX       | #{to_roman2(9)}"
puts "| #{e} |13    | XIII     | #{to_roman2(13)}"
puts "| #{f} |14    | XIV      | #{to_roman2(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman2(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman2(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman2(1646)}" 
