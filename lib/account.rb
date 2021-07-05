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
    @transactions.push({ 'date' => date.to_s, 'credit' => value, 'debit' => '', 'balance' => @balance })
  end

  def withdraw(date, value)
    @balance -= value
    @transactions.push({ 'date' => date.to_s, 'credit' => '', 'debit' => value, 'balance' => @balance })
  end

  def statement
    "Date      || Credit || Debit || Balance
      #{transactions[0]['date']}||#{transactions[0]['credit']}||#{transactions[0]['debit']}||#{transactions[0]['balance']}"
  end

  def test
    transactions[0]['date']
  end
end
