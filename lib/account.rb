# frozen_string_literal: true

# Account class designed to change user balance
class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(value)
    @balance += value
  end

  def withdraw(value)
    @balance -= value
  end
end
