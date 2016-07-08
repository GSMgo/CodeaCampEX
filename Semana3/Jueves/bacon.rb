def baconian_cipher(codigo)
  str = ""
  pos = 0
  codigo.scan(/...../).each do |x|
    case x
      when "AAAAA" 
        str.insert(pos,"a")
        pos += 1
      when "AAAAB"
        str.insert(pos,"b")
        pos += 1
      when "AAABA"
        str.insert(pos,"c")
        pos += 1
      when "AAABB"
        str.insert(pos,"d")
        pos += 1
      when "AABAA"
        str.insert(pos,"e")
        pos += 1
      when "AABAB"
        str.insert(pos,"f")
        pos += 1
      when "AABBA"
        str.insert(pos,"g")
        pos += 1
      when "AABBB"
        str.insert(pos,"h")
        pos += 1
      when "ABAAA"
        str.insert(pos,"i")
        pos += 1
      when "ABAAB"
        str.insert(pos,"k")
        pos += 1
      when "ABABA"
        str.insert(pos,"l")
        pos += 1
      when "ABABB"
        str.insert(pos,"m")
        pos += 1
      when "ABBAA"
        str.insert(pos,"n")
        pos += 1
      when "ABBAB"
        str.insert(pos,"o")
        pos += 1
      when "ABBBA"
        str.insert(pos,"p")
        pos += 1
      when "ABBBB"
        str.insert(pos,"q")
        pos += 1
      when "BAAAA"
        str.insert(pos,"r")
        pos += 1
      when "BAAAB"
        str.insert(pos,"s")
        pos += 1
      when "BAABA"
        str.insert(pos,"t")
        pos += 1
      when "BAABB"
        str.insert(pos,"v")
        pos += 1
      when "BABAA"
        str.insert(pos,"w")
        pos += 1
      when "BABAB"
        str.insert(pos,"x")
        pos += 1
      when "BABBA"
        str.insert(pos,"y")
        pos += 1
      when "BABBB"
        str.insert(pos,"z")
        pos += 1
    end
  end
str
end

# Pruebas

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"