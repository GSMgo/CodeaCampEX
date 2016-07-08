puts"text"
text = gets.chomp
puts"redact first word"
redact = gets.chomp
puts "Redact second word"
redact_2 = gets.chomp

primera, segunda = "a","a"

words = text.split (" ")

#words = ["a", "b", "c", "d"]

words.each do |word|
    if word == redact || word == redact.capitalize
    primera = word
    print "REDACTED "
    elsif word == redact_2 || word == redact_2.capitalize
    segunda = word
    print "REDACTED2 "
    else
    print word + " "
    end
end

