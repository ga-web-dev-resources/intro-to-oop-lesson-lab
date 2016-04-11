# Adding a Setter method and an increment method for age
class Pet
  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age
  end

  def name
    @name
  end

  def type
    @type
  end

  def age=(age)
    @age = age
  end

  def inc_age
    @age = @age + 1
  end

  def to_s
    "#{@name} is a #{@age} year old #{@type}."
  end
end

miko   = Pet.new("Miko",   "Dog", 2)
ginger = Pet.new("Ginger", "Cat", 7)
puts miko
puts ginger

puts "My dog's name is #{miko.name}."

miko.age = 3
puts miko

miko.inc_age
puts miko
