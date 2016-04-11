class Person
  def initialize(first_name, last_name, phone_number)
    @first_name = first_name
    @last_name = last_name
    @phone_number = phone_number
  end

  def to_s
    "#{@first_name} #{@last_name} : #{@phone_number}"
  end
end

class Pet
  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
  end

  def to_s
    "#{@name} is a #{@age} year old #{self.class} owned by #{@owner}"
  end
end

class Dog < Pet
  def speak
    "#{@name} says woof woof!"
  end
end

class Cat < Pet
  def speak
    "#{@name} says meow"
  end
end

class Bird < Pet
  def speak
    "#{@name} says tweet, tweet"
  end
end

class Frog < Pet
  def speak
    "#{@name} says ribbet"
  end
end

pets = [
  Dog.new('Snoopy',   7,  Person.new('Charlie', 'Brown', '123-4567')),
  Cat.new('Felix',    3,  Person.new('Cindy', 'Jones',   '867-5309')),
  Bird.new('Tweetie', 2,  Person.new('John',  'Lennon',  '444-1671')),
  Frog.new('Kermit',  12, Person.new('Jim',   'Henson',  '543-1289'))
]

pets.each do |pet|
  puts pet
  puts pet.speak
end
