## Intro to OOP


<br>

##IWBAT…
- describe OOP
- describe and create a class and an instance
- describe Interface and Encapsulation
- use `self`

<br>

##Describing OOP
**I do:**

- Whiteboard - Draw out Procedural programming (step-by-step)
- Whiteboard - Draw out OOP
	- Blocks that represent objects, messages are sent between them
- Outloud: Explain Object: an abstract or concrete representation of a real-world object
	- will get to abstract and concrete later, focus on real-world object

<br>


##Describing and creating Class and Instance
**I do: (Ref: [Intro to OOP](https://github.com/marcwright/WDI_ATL_1_Instructors/blob/master/w01/d05/intro_to_oop.md))**

- Live coding - Build basic class, create new instance, Add a binding.pry to experiment
- Out loud - Explain Class and Instance
	- Class: Blueprint
	- Instance: Specific case
	- Example could be a Bike class, instance would be my_bike
- Live coding - Let's build a Student class
	
```
# A basic class
# Classes are capitalized

class Student
  def initialize
    puts 'I Live!'
  end
end

# Instantiating a class

bob = Student.new
puts bob

```
- Out loud - Explain instance variable
	- Bob is an instance of the Student class
	- Bob has variables specific to him, so those are instance variables

```
# A class with constructor arguments and private instance variables:

class Student
  def initialize(name, age=100)
    @name = name
    @age = age
  end
end

bob = Student.new("Bob")
puts bob.name
# nil
```
- Live coding - Show them that `bob.name` returns error, Add public getter method

```
# A class with a public getter method:

class Student
  def initialize(name, age=100)
    @name = name
    @age = age
  end

  def name
    @name
  end
end

bob = Student.new("Bob")
puts bob.name
# "Bob"

bob.name = "Robert"
# Error
```

**We do:**

- Live coding - Show them that `bob.name = “Robert”` returns error. Ask them for input how to create a public setter method

```
# A class with public getter and setter methods:

class Student
  def initialize(name, age=100)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

bob = Student.new("Bob")
puts bob.name
# "Bob"

bob.name = "Robert"
# "Robert"
```

- Live Coding - A class with `attr_accessor`:

```
class Student
  attr_accessor :name, :age

  def initialize(name, age=100)
    @name = name
    @age = age
  end

  def say_hello
    @age < 18 ? "sup? I'm #{@name}" : "Hello, my name is #{@name}"
  end

  def to_s
    self.name
  end
end
```

- Point out that we have `attr_reader` and `attr_writer`



##Describing Encapsulation and Interface

**I do:**

- Whiteboard - Explain Encapsulation
	- The concept of hiding the implementation from the interface
	- When you drive your car, you don’t watch the engine turn or fuel being ignited
- Explain Interface
	- When you’re driving, the interface is the steering wheel, the dashboard, and the pedals

**We do:**

- Whiteboard - Draw a TV and make the channel/volume/power buttons obvious, draw it plugged in
- Whiteboard - Ask what are the components of the TV’s interface?
- Whiteboard - What behavior is encapsulated?

**You do:**

- Think of a complex object that you interact with (similar to a car or TV like we used) and tell your partner what it is
- Write out the object’s interface and what behavior is encapsulated
- Share your thoughts and how it’s applicable in everyday life

<br>

##Using `self`

**I do:**

- Out loud - Often times in code, you need to refer to the object that called it. This is when we use the command self

- Out loud - I may want to make a class method, or in other words, a method that applies to all instances
- Make a Person class

```
class Person
	def self.species
		“homo sapien”
	end
end
```
- Code - Making a new version of plus

```
5.plus(2)

class Fixnum
	def plus(x)
		self + x
	end
end

5.plus(2)
```

- Code - add `self` method to Student

```
# A class with additional methods & self reference:

class Student
  def initialize(name, age=100)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def self.say_hello
    @age < 18 ? "sup? I'm #{@name}" : "Hello, my name is #{@name}"
  end

  def to_s
    self.name
  end
end
```

 <br>
 

##Lab 

- Utopia self-examination
- Smoothies Lab

##Bonus

- Hacker Cola
