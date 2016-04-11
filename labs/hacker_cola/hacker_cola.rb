# Drink Hacker Cola, it's delicious!
class HackerColaVendingMachine
  def initialize(quantity, price)
    @quantity = quantity
    @price = price
    @total_sold = 0
    @amount_deposited = 0
  end

  def nickel
    @amount_deposited += 5
    self
  end

  def dime
    @amount_deposited += 10
    self
  end

  def quarter
    @amount_deposited += 25
    self
  end

  def sold_out?
    @quantity == 0
  end

  def insufficient_amount?
    @amount_deposited < @price
  end

  def purchase
    case
    when sold_out?
      change = @amount_deposited
      @amount_deposited = 0
      return { message: 'Sold Out', change: change }
    when insufficient_amount?
      return { message: "Please enter #{@price - @amount_deposited} cents." }
    else
      @quantity -= 1
      @total_sold += 1
      change = @amount_deposited - @price
      @amount_deposited = 0
      return { beverage: 'HackerCola', change: change }
    end
  end

  def refill(amount)
    @quantity += amount
    self
  end

  def to_s
    "HackerCola: quantity=#{@quantity}, total_sold=#{@total_sold}, price=#{@price}, amount_deposited=#{@amount_deposited}"
  end
end
