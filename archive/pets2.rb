class Dog
  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
  end

  def speak
    "#{@name} says woof woof!"
    "#{@name} says woof woof!"
  end

  def to_s
    "#{@name} is b #{@age} year old Dog whose owner is #{@owner}"
  end
end

class Cat
  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
  end

  def speak
    "#{@name} says meow"
  end

  def to_s
    "#{@name} is a #{@age} year old Cat whose owner is #{@owner}"
  end
end

pets = [
  Dog.new('Snoopy', 7, 'Charlie'),
  Cat.new('Felix',  3, 'Cindy')
]

pets.each do |pet|
  puts pet
  puts pet.speak
end
