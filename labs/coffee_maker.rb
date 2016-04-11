class CoffeeMaker
  def initialize
    @water_level = 0
    @cartridge = nil
  end

  def add_water(amount)
    # TODO: ensure water_level never exceeds 100
    @water_level += amount
    self
  end

  def has_water?
    return @water_level >= 25
  end

  def has_cartridge?
    return !@cartridge.nil?
  end

  def add_cartridge(flavor)
    @cartridge = flavor
    self
  end

  def to_s
    coffee = @cartridge ? @cartridge : 'no'
    "CoffeeMaker has #{@water_level}% water and #{coffee} coffee."
  end

  def brew
    message = brew_message
    if has_water? && has_cartridge?
      @water_level -= 25
      @cartridge = nil
    end
    message
  end

  private

  def brew_message
    return "Cannot brew, please add water."      if !has_water?
    return "Cannot brew, please add cartridge."  if !has_cartridge?
    return "Started brewing your #{@cartridge}!"
  end
end

coffee_maker = CoffeeMaker.new
puts coffee_maker.brew
puts coffee_maker

puts
coffee_maker.add_water 50
puts coffee_maker.brew
puts coffee_maker

puts
coffee_maker.add_cartridge 'Dark Roast'
puts coffee_maker.brew
puts coffee_maker
