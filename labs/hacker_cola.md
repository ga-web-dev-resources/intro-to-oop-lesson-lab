# HackerCola Vending Machine

Classes and objects are great at *encapsulating* both state (data) and behavior (methods). In this exercise we will use Ruby to create a class that encapsulates the state and behavior of a vending machine. The vending machine will manage state such as:

* the `price` of a cola
* the current `quantity` of cans of cola in the machine
* the current `amount_deposited` into the machine towards the purchase of a cola
* the `total_sold` - i.e. the total number of colas sold by this machine

## Write a vending machine class that sells HackerCola.

* This simple vending machine only dispenses one product: HackerCola
* The vending machine should keep track of:
    - the `price` for a HackerCola in cents
    - the current `quantity` of HackerCola in the vending machine
    - the `amount_deposited` towards the purchase of a HackerCola in cents
    - the `total_sold` - the number of colas sold by this machine
* The initialize method should take the following arguments:
    - the `price` for a HackerCola
    - the initial `quantity` of HackerCola
* Write a method for each coin that the vending machine recognizes:
   - nickel, dime, quarter
   - each method should increase the `amount_deposited` accordingly
* A `purchase` method that returns a HackerCola and the correct change.
   - remember that a successful purchase should clear the `amount_deposited`
     decrement the current `quantity`, and increment the `total_sold`.
   - use a Hash as the return value, for example:
     `{ beverage: 'HackerCola', change: 30 }` would return the drink and 30 cents.
   - if `purchase` is called with insufficent `amount_deposited`, return an
     error message, for example `{ message: "Please enter #{remaining_amount} cents." }`
   - if `purchase` is called with no more HackerCola, return an error message
     and the `amount_deposited`, for example:
     `{ message: 'Sold Out', change: 75 }`
* A `refill` method that takes a quantity argument and adds it to the
  current `quantity`.
* A nice `to_s` method that prints the state of the VendingMachine:
  `HackerCola: quantity=88, total_sold=12, price=75, amount_deposited=25`
* Use the following to test your VendingMachine

```ruby
vending_machine = HackerColaVendingMachine.new(100, 75)
puts vending_machine                  # HackerCola: quantity=100, total_sold=0, price=75, amount_deposited=0

# Add a nickel, a dime, and a quarter
vending_machine.nickel.dime.quarter

puts vending_machine                  # HackerCola: quantity=100, total_sold=0, price=75, amount_deposited=40
puts vending_machine.purchase.to_s    # {:message=>"Please enter 35 cents."}

# Add a nickel, a dime, and a quarter
vending_machine.nickel.dime.quarter   # method chaining
puts vending_machine.purchase.to_s    # {:beverage=>"HackerCola", :change=>5}
puts vending_machine                  # HackerCola: quantity=99, total_sold=1, price=75, amount_deposited=0

vending_machine.refill(1);
puts vending_machine                  # HackerCola: quantity=100, total_sold=1, price=75, amount_deposited=0
```
