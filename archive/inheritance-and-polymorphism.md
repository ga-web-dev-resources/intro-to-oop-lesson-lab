# Inheritance and Polymorphism with Ruby

## Review Basic OOP

OOP provides

* Encapsulation: data & code / state & behavior / properties & methods
* Inheritance: "isA"
* Polymorphism:

## Code Along

### Part 1

Write a `Pet` class having the following properties:

* `species`
* `name`
* `age`
* `owner`

Add the following methods:

* `speak` (dogs should say "woof woof" and cats should say "meow")
* `to_s` method that prints the name, age, and owner of the pet

You will need to use some conditional logic in the `speak` method.

Test your code by creating an array of pets and enumerate over them calling their `speak` and `to_s` methods.

```ruby
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
  Pet.new('Dog', 'Snoopy',   7, 'Charlie'),
  Pet.new('Cat', 'Snuggles', 3, 'John')
]

pets.each do |pet|
  puts pet
  puts pet.speak
end
```

### Part 2

Now write the same functionality with 2 separate classes for `Dog` and `Cat`, each having a custom `speak` function.

```ruby
class Dog
  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
  end

  def speak
    "#{@name} says woof woof!"
  end

  def to_s
    "#{@name} is a #{@age} year old Dog whose owner is #{@owner}"
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
  Dog.new('Snoopy',   7, 'Charlie'),
  Cat.new('Snuggles', 3, 'John')
]

pets.each do |pet|
  puts pet
  puts pet.speak
end
```

### Part 3
Now DRY it up using a `Pet` superclass for `Dog` and `Cat`.

```ruby
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
```

### Bonus

* add the following Pet classes:
  - Bird (says tweet, tweet)
  - Frog (says ribbit)
* add `gender` and `color` properties to the Pet class and to its `to_s` method
* add an `inc_age` method that increments the age of the pet by 1 year
* Convert the `owner` to a Person object with a `first_name`, a `last_name`, and a `to_s` method

## Discuss

* `inheritance`
* `polymorphism`
* UML class diagrams: `isA` and `hasA`
* inheritance vs. delegation

## Exercise - OOP Design

> NOTE: this exercise works well in a room with lots of whiteboard space.

Break up into groups of 3 or 4 and design a set of classes for _one_ of the following:

* a _BlackJack_ game with a `dealer`, `players`, `deck`, `chips`, etc.
* a _Restaurant Reservation System_ (think Open Table) with `restaurants`, `tables`, `parties`, and `reservations`.

Take 20 minutes to design your OOP solution on a whiteboard. Then we will all present our solutions.
