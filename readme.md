---
title: Introduction to Object Oriented Programming
duration: "2:00"
creator:
    name: Mike Hopper
    city: Atlanta
---

# Introduction to Object Oriented Programming

This lesson will take two hours including **quiz** and **labs**.

## Learning Objectives

- Describe OOP
- List the advantages of OOP
- Describe what a class, object, instance variable, method, interface, implementation and encapsulation are.
- Write a class in Ruby with the following features
  - A constructor method
  - Some instance variables
  - Some public methods
  - Getters, Setters, attr_accessors
  - A singleton method using the `self` keyword
- Create a few classes that extend from a parent class

## Introduction: Why OOP

* Often programs can be thought of as *data* (variables) and *actions* (functions) that operate on that data.
* But programs can get big, *really* big.
  - See [million-lines-of-code diagram](http://www.informationisbeautiful.net/visualizations/million-lines-of-code/)
* Large programs can become hard to understand, reason about, and change
* In addition, most of the code we write should be *reusable*

> OOP: a programming paradigm based on the concept of "objects", which are data structures that contain both data (attributes) and code (methods).

### Enter OOP

* One approach to improving how we the design and build software is to model it after the *real world* objects that it represents.
* This is referred to as *Object Oriented Programming* or *OOP*
* OOP partitions a large program into a set of classes.
* Each class *encapsulates* a set of variables and functions.

## Example 1 - Pets

* We are going to develop a simple class that represents a pet.
* Each pet will have a name and a type such as dog, cat, or bird.

### Code Along - Getting Started with Ruby Classes

* Enter the following into a file called "pets.rb"

```ruby
class Pet
  def initialize(name, type)
    @name = name
    @type = type
  end
end
```

* In the above code, we have an *initialize* method which is Ruby's way of defining a *constructor* for the class.
* The *initialize* method can take arguments: here we pass in the *name* and the *type* of the pet
* The *body* of the *initialize* method saves the arguments passed into it as *instance* variables.
* The *instance variables* are specified using the `@` operator.
* Instance variables belong to an *instance* of a class, also called an *object*.

So how do we create some pets?

```ruby
miko   = Pet.new("Miko", "Dog")
ginger = Pet.new("Ginger", "Cat")
puts miko
puts ginger
```

* Here we show how to create class instances (objects) in Ruby using the `new` keyword.
* When we call `Pet.new` we pass in the required arguments that the `initialize` method expects.
* To see the results, we use `puts`.
* But when we run this code we don't get very pretty output. Let's fix that:
  - Let's add a `to_s` method to the Pet class:

```ruby
def to_s
  "#{@name} is a #{@type}."
end
```

* Here we have used *string interpolation* and we have references to two *instance variables* to create and return a nice string representation of our Pet objects.
* Note the use of the `@` operator to refer to instance variables.

### Getter Methods

* What if we want to get access the name or type of a Pet?
* We currently cannot access them directly - they are *protected* by the Pet class.
* So we need to add *getter* methods for them.

```ruby
def name
  @name
end
def type
  @type
end
```
* Now we can write something like this:

```ruby
puts "My dog's name is #{miko.name}."
```

### Coding Challenge

* Add another attribute to the Pet class called `age`
  - Put age in the list of arguments for the `initialize` method
  - Pass in an age for Miko (2) and Ginger (7)
  - Add the age to the to_s method so that it prints:

    Miko is a 2 year old Dog.
    Ginger is a 7 year old Cat.

### Setter Methods

* What if we want to modify the age of a pet?
* We could use a *setter* method:

```ruby
def age=(age)
  @age = age
end
```

* Note the syntax for a setter method: the trailing `=` operator specifies that it is a *setter* method.

### Other Methods

* What if, instead of a setter method, we simply wanted a way to increment the age of a pet?

```ruby
def inc_age
  @age = @age + 1
end
```

* With this approach we don't *need* a setter method at all, though we may want to keep the setter method for other reasons (such as fixing bad data).

* Sometimes it is preferable to control / limit the modification of instance variables without providing a *setter* method.

### Encapsulation, Interfaces, and Implementation

* From the above example we can see a simple illustration of encapsulation.
* The Pet class encapsulates the following:
  - A name, an age, and a type.
  - The age can be modified, but the name and type cannot.
  - A nice string representation
* We have both *encapsulation* and an *interface* for using the Pet class.
* The *implementation* is the body of the Pet class methods.
* We can change the *implementation* without changing the *interface*.

### Making life easy through attr_accessors

* Ruby provides a way to simplify the creation of Getters and Setters:
  - attr_reader - creates a getter for an instance variable
  - attr_writer - creates a setter for an instance variable
  - attr_accessor - creates both a getter and a setter for an instance variable

Our Pet class with attr_accessors:

```ruby
class Pet
  attr_reader :name, :type
  attr_accessor :age

  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age
  end
  def inc_age
    @age = @age + 1
  end
  def to_s
    "#{@name} is a #{age} year old #{@type}."
  end
end
```

## Review

* Can someone explain the benefits of OOP?
* What is an instance variable?
* List 2 ways to add a "getter" method to a class.
* What is the name of the constructor method in Ruby?
* Fill in the blanks: "With OOP we can modify the ??? without affecting the ???"

## Labs and/or Homework

* [Traffic Light](labs/traffic_light)
* [Bank Account](labs/bank_account)
* [Coffee Maker](labs/coffee_maker)
* [Hacker Cola Vending Machine](labs/hacker_cola)

## Quiz

1. In Ruby, what is the name of the class method that aids in constructing the object (i.e. populating the instance variables of the object)?

2. Write the statement that creates an instance of a Person class. You may assume that the Person class constructor takes the following arguments:
  first_name, last_name, age.

3. What is the role of the `@` operator in Ruby classes?

4. Describe what `attr_reader`, `attr_writer`, and `attr_accessor` do.


## Quiz Answers

1. `initialize`

2. `person = Person.new("Joe", "Hacker", 27)`

3. It is used to refer to instance variables, for example `@name` refers to the `name` instance variable.

4. `attr_reader`   - shortcut for declaring a getter method
   `attr_writer`   - shortcut for declaring a setter method
   `attr_accessor` - shortcut for declaring both a getter and a setter
