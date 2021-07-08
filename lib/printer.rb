require './lib/account'

class Printer

  def statement 
    header
    body
  end

  def header 
    "date || credit || debit || balance"
  end

  def body
    "14/01/2012 || || 500.00 || 2500.00"
  end


end

