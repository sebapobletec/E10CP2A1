class Alumno
  attr_accessor :alumnos
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(file_name = 'notas.txt')
    alumnos = []
    data = []
    File.open(file_name, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    return alumnos
  end
end

print Alumno.read_file
