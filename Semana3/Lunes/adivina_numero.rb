class NumberGuessingGame
  @@num = 0
  @@guess_num = 0

  def initialize
   @@num = rand(10)
  end

  def guess
    loop do
      puts "Adivina el número: "
      @@guess_num = gets.chomp.to_i

      if @@guess_num < @@num
          puts "Too low"
      elsif @@guess_num > @@num
          puts "Too high"
      else 
          puts "You got it!"
          break
      end
    end
  end
end

loop do 
  print "Do you want to play? (y,n)"
  jugar = gets.chop!
  jugar.downcase!
  if jugar == "y" 
    game = NumberGuessingGame.new
    game.guess
  else
    exit
  end
end