---
title: Bank Account
type: lab
duration: "0:30"
creator:
    name: Mike Hopper
    city: Atlanta
---

# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Bank Account

#### Requirements

Create a `BankAccount` class with the following:

- instance vars: `name`, `balance` (use `attr_reader` for these)
- methods: `deposit(amount)` and `withdraw(amount)` that affect the balance
- a `to_s` method that prints the name and the balance
- Test your code by creating two `BankAccount` objects, a "Checking" and a
  "Savings".
- Make some deposits and withdrawals and print the accounts using `puts`.
