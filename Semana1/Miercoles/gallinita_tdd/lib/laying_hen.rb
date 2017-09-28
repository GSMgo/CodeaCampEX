$eggs = []
$basket = []
$rotten = 0

class LayingHen
  attr_accessor :age

  def initialize
    @age = 0
  end

  #Ages the hen one month, and lays 4 eggs if the hen is older than 3 months
  def age!
    @age += 1;
    lay_egg(@age);
  end  

  def lay_egg(age)
    if age > 3
      4.times do 
        $eggs << Egg.new 
      end
    end
  end

  def any_eggs?
    $eggs.length > 0 ? true : false 
  end

  def pick_egg
    $eggs.each do |x|
      hours = rand(5)
      x.hatched_hours += hours
      if x.rotten?(x.hatched_hours)
        $rotten+=1
      else
        $basket << x
      end
    end
  end

  def old?
    @age
  end

end


class Egg
  attr_accessor :hatched_hours

  def initialize
    @hatched_hours = 0
  end

  def rotten?(hh)
    hh > 3 ? false : true
  end

end
