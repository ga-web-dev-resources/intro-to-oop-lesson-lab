# Coding Challenge - adding age attribute
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

  def to_s
    "#{@name} is a #{@age} year old #{@type}."
  end
end

miko   = Pet.new("Miko",   "Dog", 2)
ginger = Pet.new("Ginger", "Cat", 7)
puts miko
puts ginger

puts "My dog's name is #{miko.name}."
