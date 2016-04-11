class Pet
  def initialize(species, name, age, owner)
    @species = species
    @name = name
    @age = age
    @owner = owner
  end

  def speak
    case @species
    when 'Dog'
      "#{@name} says woof woof!"
    when 'Cat'
      "#{@name} says meow"
    else
      "#{@name} says Hello"
    end
  end

  def to_s
    "#{@name} is a #{@age} year old #{@species} whose owner is #{@owner}"
  end
end

pets = [
  Pet.new('Dog', 'Snoopy', 7, 'Charlie'),
  Pet.new('Cat', 'Felix',  3, 'Cindy')
]

pets.each do |pet|
  puts pet
  puts pet.speak
end
