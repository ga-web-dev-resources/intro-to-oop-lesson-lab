class Planet
  @@planets_count = 0

  def initialize(name)
    @name = name
    @@planets_count += 1
  end

  def self.planets_count
    @@planets_count
  end
end

Planet.new("Earth")
Planet.new("Venus")
Planet.new("Jupiter")

puts Planet.planets_count
