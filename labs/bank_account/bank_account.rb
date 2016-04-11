class BankAccount
  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def to_s
    "#{@name} has a balance of $#{balance}"
  end
end

checking_account = BankAccount.new("Checking", 100.00)
savings_account = BankAccount.new("Savings", 200.00)
puts checking_account
puts savings_account

checking_account.withdraw(12.34)
savings_account.deposit(50.00)
puts checking_account
puts savings_account
