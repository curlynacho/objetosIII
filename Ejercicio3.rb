class Vehicle
  attr_accessor :model, :year, :start
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@contador = 0
  def initialize(model, year)
    super
    @@contador += 1
  end

  def self.instancias
    @@contador
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

toyota = Car.new('Camaro', 2018)
puts toyota.start
puts toyota.engine_start
puts toyota.start

10.times do |_e|
  Car.new('A4', 2017)
end
puts "Se ha instanciado car #{Car.instancias} veces!"
