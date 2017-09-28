def are_anagrams?(word1, word2)
  answer = false
  if word1.length == word2.length
    arr_word1 = word1.split(//)
    arr_word1.each do |x|
      if word2.include?(x)
        answer = true
      else
        return false
      end
    end
  else
    return false
  end
answer
end 

p are_anagrams?("omar","amor")
p are_anagrams?("omar","amol")

def canonical(palabra)
 var1 = palabra.split(//)
 var1.sort!
end 

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end
 p are_anagrams?("omar","amor")
 p are_anagrams?("omar","amor")

def anagrams_for(palabra, array)
  empty_array = []
  var1 = palabra.split(//).sort
  array.select do |word| 
    x = word.split(//).sort
    if x == var1
      empty_array << word  
    end 
  end 
  empty_array
end 

p anagrams_for("omar", ["amor", "ramo", "hola", "gerardo"])
