class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.get_anagrams(word)
    p "Entra a get anagrams con #{word}"
    p "*"*50
    p word
    arr_ans = []
    word_canonica = word.downcase.split(//).sort!.join("")
    Word.all.each do |x|
      if x.canonica == word_canonica
        arr_ans << x
      end
    end
    arr_ans
  end

end

