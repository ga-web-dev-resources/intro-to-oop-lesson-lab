require_relative('./hacker_cola.rb')

# Test script
vending_machine = HackerColaVendingMachine.new(100, 75)
puts vending_machine                  # HackerCola: quantity=100, total_sold=0, price=75, amount_deposited=0

# Add a nickel, a dime, and a quarter
vending_machine.nickel.dime.quarter

puts vending_machine                  # HackerCola: quantity=100, total_sold=0, price=75, amount_deposited=40
puts vending_machine.purchase.to_s    # {:message=>"Please enter 35 cents."}

# Add a nickel, a dime, and a quarter
vending_machine.nickel.dime.quarter.dime   # method chaining
puts vending_machine
puts vending_machine.purchase.to_s    # {:beverage=>"HackerCola", :change=>5}
puts vending_machine                  # HackerCola: quantity=99, total_sold=1, price=75, amount_deposited=0

vending_machine.refill(1)
puts vending_machine                  # HackerCola: quantity=100, total_sold=1, price=75, amount_deposited=0
