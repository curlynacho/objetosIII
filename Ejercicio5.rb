class Rectangulo
  attr_accessor :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
  puts "Los lados de un rectángulo miden de largo: #{@largo}cms. y de ancho: #{@ancho}cms."
  end

  def perimetro
    puts "El perímetro del rectángulo es de: #{@largo*2 + @ancho*2}"
  end
  def area
    puts "El área del rectángulo es de: #{@largo*@ancho}"
  end

end

class Cuadrado
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "Los lados de un cuadrado miden: #{@lado}cm."
  end
  def perimetro
    puts "El perímetro del cuadrado es de: #{@lado*4}"
  end
    def area
    puts "El área del rectángulo es de: #{@lado*@lado}"
  end
end



rec = Rectangulo.new(4,2)
cua = Cuadrado.new(4)
puts rec.lados
puts cua.lados
puts rec.perimetro
puts cua.perimetro
puts rec.area
puts cua.area
