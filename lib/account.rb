# frozen_string_literal: true

# Account class designed to change user balance
class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(date, value)
    @balance += value
    @transactions.push({ 'date' => date, 'credit' => value, 'debit' => '', 'balance' => @balance })
  end

  def withdraw(date, value)
    @balance -= value
    @transactions.push({ 'date' => date, 'credit' => '', 'debit' => value, 'balance' => @balance })
  end

end
