

class Ppt
  attr_accessor :tiradas, :ganadas, :resultados
  attr_reader :humano,:maquina,:resultado
  
  def initialize
    
     #@tiradas = tiradas
     #@ganadas = ganadas
     #@resultados = resultados.to_s
     #@humano = humano.to_s
     #@maquina = maquina.to_s
     #@resultado = resultado.to_s  
      @defeat =  { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
      @tiradas = [ :piedra, :papel, :tijeras] 
  end
  
  def juego_j(tirada_j)
    
    puts "Elige uno de: #{@tiradas.join(', ')}: "
    @jugada_j = tirada_j.to_sym
    
    raise ScriptError, "Debes ejecutar: ''#{$0}'' seguido uno de los siguientes argumentos: '#{tiradas.join(', ')}'" unless @tiradas.include? @jugada_j
  end
  
  def juego_m
    
    @jugada_c= @tiradas.sample
    
  end
  
  def partida
    
    puts "Jugada del humano: #{@jugada_j}"
    puts "Jugada del PC: #{@jugada_c}"
    
    if (@defeat[@jugada_c] == @jugada_j)
      final = "Pierdes"
    elsif (@jugada_c == @jugada_j)
      final = "Empatas"
    else
     # final = "Gana el humano. #{@jugada_j} gana a #{@jugada_c}"
	final = "Ganas"
    end
    
    
  end
  
  end
