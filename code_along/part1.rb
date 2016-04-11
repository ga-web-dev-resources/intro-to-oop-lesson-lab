class Pet
  def initialize(name, type)
    @name = name
    @type = type
  end
  def to_s
    "#{@name} is a #{@type}."
  end
end

miko   = Pet.new("Miko",   "Dog")
ginger = Pet.new("Ginger", "Cat")
puts miko
puts ginger
