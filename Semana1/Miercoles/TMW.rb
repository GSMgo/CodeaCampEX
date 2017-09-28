print "Please write something:  "
user_input = gets.chomp

if user_input.include?("s") || user_input.include?("S") || user_input.include?("ce") || user_input.include?("Ce") || user_input.include?("ci") || user_input.include?("Ci")
    user_input.gsub!(/s/, "th")
    user_input.gsub!(/S/, "th")
    user_input.gsub!(/Ce/, "th")
    user_input.gsub!(/ce/, "th")
    user_input.gsub!(/Ci/, "th")
    user_input.gsub!(/ci/, "th")
    puts "This is the text: #{user_input}"
    
elsif user_input.empty?
    "Your input is empty"
else
    puts "There are no s in this string"
end
