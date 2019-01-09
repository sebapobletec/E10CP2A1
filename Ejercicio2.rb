module Formula
  def perimetro(lado1, lado2)
    (2 * lado1 + 2 * lado2)
  end

  def area(lado1, lado2)
    lado1 * lado2
  end
end

class Rectangulo
  include Formula
  attr_accessor :base
  attr_accessor :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    print "La altura es #{@altura} y la base es #{@base}"
  end
end

class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    print "La medida del lado es #{@lado}"
  end
end

rectangulo1 = Rectangulo.new(rand(1..10), rand(1..10))
cuadrado1 = Cuadrado.new(rand(1..10))
puts cuadrado1.lados
puts cuadrado1.area(cuadrado1.lado, cuadrado1.lado)
puts cuadrado1.perimetro(cuadrado1.lado, cuadrado1.lado)

puts rectangulo1.lados
puts rectangulo1.area(rectangulo1.base, rectangulo1.altura)
puts rectangulo1.perimetro(rectangulo1.base, rectangulo1.altura)
