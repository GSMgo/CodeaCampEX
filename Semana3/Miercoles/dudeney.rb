def dudeney_number?(num)
  cubo = 0
  arr_num = num.to_s.split('').map(&:to_i)
  arr_num.each do |x|
    cubo += x
  end
  if cubo*cubo*cubo == num
    true
  else 
    false
  end
end


p dudeney_number?(1) #== true
p dudeney_number?(125) #== false
p dudeney_number?(512) #== true
p dudeney_number?(1_728) #== false
p dudeney_number?(5_832) #== true