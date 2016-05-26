# A simple TrafficLight
class TrafficLight
  attr_reader :name, :color

  def initialize(name)
    @name = name
    @color = 'red'
    @secret_code = rand(100)
  end

  def go_red
    @color = 'red'
  end

  def go_green
    @color = 'green'
  end

  def go_yellow
    @color = 'yellow'
  end

  def next
    case @color
    when 'green'  then go_yellow
    when 'red'    then go_green
    when 'yellow' then go_red
    end
  end

  def to_s
    "#{@name} is #{@color}"
  end
end

light = TrafficLight.new('North and Peacthree')
puts light

puts light
