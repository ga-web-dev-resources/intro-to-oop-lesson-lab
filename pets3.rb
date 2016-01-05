class Pet
  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
  end

  def speak
    "#{@name} speaks"
  end

  def to_s
    "#{@name} is a #{@age} year old #{self.class} whose owner is #{@owner}"
  end
end

class Dog < Pet
  def speak
    "#{@name} says woof woof!"
  end
end

class Cat < Pet
  def speak
    "#{@name} says meow."
  end
end

pets = [
  Dog.new('Snoopy',   7, 'Charlie'),
  Cat.new('Snuggles', 3, 'John')
]

pets.each do |pet|
  puts pet
  puts pet.speak
end

# TODO:
#  add the following pet species: Bird (says tweet, tweet), Frog (says ribbit)
#  add the gender color properties to the Pet class
#  add a method with the name inc_age that increments the age of the pet by 1 year
#  Convert owner to a Person object with a first_name and a last_name
