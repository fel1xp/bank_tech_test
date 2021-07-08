# frozen_string_literal: true

# Account class designed to change user balance

require './lib/printer'

class Account
  attr_accessor :balance, :transactions

  def initialize(printer = Printer.new )
    @balance = 0
    @transactions = []
    @printer = printer 
  end

  def deposit(date, value)
    @balance += value
    @transactions.push({ 'date' => date, 'credit' => value, 'debit' => '', 'balance' => @balance })
  end

  def withdraw(date, value)
    @balance -= value
    @transactions.push({ 'date' => date, 'credit' => '', 'debit' => value, 'balance' => @balance })
  end

  def statement
    @printer.header
  end



end
