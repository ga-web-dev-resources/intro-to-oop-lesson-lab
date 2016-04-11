require_relative '../traffic_light.rb'

describe 'TrafficLight' do
  name = 'North and Peachtree'
  light = TrafficLight.new(name)

  it 'has a name getter that returns the name'  do
    expect(light.name).to eq(name)
  end

  it 'has a color that is initialized to red' do
    expect(light.color).to eq('red')
  end

  it 'has a go_green method that sets the color to "green"' do
    light.go_green
    expect(light.color).to eq('green')
  end

  it 'has a go_yellow method that sets the color to "yellow"' do
    light.go_yellow
    expect(light.color).to eq('yellow')
  end

  it 'has a go_red method that sets the color to "red"' do
    light.go_red
    expect(light.color).to eq('red')
  end

  it 'has a next method that advances the light from "red" to "green"' do
    light.go_red
    expect(light.color).to eq('red')
    light.next
    expect(light.color).to eq('green')
  end

  it 'has a next method that advances the light from "green" to "yellow"' do
    light.go_green
    expect(light.color).to eq('green')
    light.next
    expect(light.color).to eq('yellow')
  end

  it 'has a next method that advances the light from "yellow" to "red"' do
    light.go_yellow
    expect(light.color).to eq('yellow')
    light.next
    expect(light.color).to eq('red')
  end

  it 'has a to_s method that returns "<name> is <color>"' do
    light.go_green
    expect(light.color).to eq('green')
    expect(light.to_s).to eq(name + ' is green')
  end
end
