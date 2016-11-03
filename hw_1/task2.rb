##Task 2: Organize OOP model to execute this code and got such string as a result:
#volodya.invite(ira).to_drink coffee #=> Ira agrees to drink some Latte with you!
class Human
  attr_reader :name
  def initialize(name)
    @name = name.capitalize
  end

  def name
    @name
  end

  def invite(name)
    name
  end

  def to_drink(type_of_drink)
    puts "#{@name} agrees to drink some #{type_of_drink} with you!"
  end
end


class Drink
  attr_reader :name
  def initialize(name)
    @name = name.capitalize
  end
  def to_s
    @name
  end
end


volodya = Human.new("volodya")
ira = Human.new("ira")
coffee = Drink.new("latte")
puts volodya.name
puts ira.name
puts coffee.name


volodya.invite(ira).to_drink coffee