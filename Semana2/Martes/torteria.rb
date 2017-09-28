#ejercicio de torteria

class Horno

  def initialize
    $time = 0
  end

  def bake
    $time += 1
  end

end

#=======

class Torta
  
  def initialize(type)
    @type = type
  end

  def what_am_i
    return @type
  end

end

#=======

class Torteria

  def initialize
    @tortas_sin_hacer
    @tortas_horneadas
    @arr_tortas_sin_hacer = []
    @arr_tortas_en_horno = []
    @arr_tortas_horneadas = []
    $horno = Horno.new
  end

  def create_torta
    @arr_tortas_sin_hacer << Torta.new("jamon")
  end

  def meter_al_horno
    @arr_tortas_sin_hacer.each do |x| 
      @arr_tortas_en_horno << x
    end
    @arr_tortas_sin_hacer = []
  end

  def checar_tortas
    if @arr_tortas_en_horno.length >= 1
      if $time == 1
        puts "Crudas"
      elsif $time == 2
        puts "Casi-listas"
      elsif $time == 3
        puts "Listas"
      elsif $time == 0
        puts "No prendiste el horno"
      else
        puts "Se quemaron las tortas"
      end
    else
      puts "No hay tortas en el horno"
    end
  end

  def retirar_torta
    @arr_tortas_en_horno.each do |x| 
      @arr_tortas_horneadas << x
      end
      @arr_tortas_en_horno = []
  end

end


torteria1 = Torteria.new
torteria1.create_torta
torteria1.create_torta
torteria1.create_torta
torteria1.meter_al_horno
$horno.bake
torteria1.checar_tortas
$horno.bake
torteria1.checar_tortas
$horno.bake
torteria1.checar_tortas
$horno.bake
torteria1.checar_tortas
torteria1.retirar_torta
