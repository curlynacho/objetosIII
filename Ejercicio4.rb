class Alumno
  attr_accessor :nombre, :nota1, :nota2, :nota3, :nota4
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(notas = 'TallerObjetosIII/notas.txt')
    alumnos = []
    data = []
    File.open(notas, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    alumnos
  end
end

puts Alumno.read_file
# alum.each do |d|
#   puts d.nombre
# end
