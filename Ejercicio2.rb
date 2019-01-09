module Formula
  def perimetro
    if self.class == Rectangulo
    (2 * self.base + 2 * self.altura)
    elsif self.class == Cuadrado
    (4 * self.lado)
    end
  end

  def area
    if self.class == Rectangulo
    ( self.base * self.altura)
    elsif self.class == Cuadrado
    ( self.lado)
    end
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

puts rectangulo1.lados
puts rectangulo1.perimetro
puts rectangulo1.area

puts cuadrado1.lados
puts cuadrado1.perimetro
puts cuadrado1.area
