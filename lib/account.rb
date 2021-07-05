# frozen_string_literal: true

# Account class designed to change user balance
class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(date, value)
    @balance += value
    {"date" => "#{date}", "credit" => value, "debit" => "", "balance" => @balance}
  end

  def withdraw(date, value)
    @balance -= value
    "#{date}, #{@balance}"
  end

  def statement
    "Date      || Credit || Debit || Balance"
  end

end
