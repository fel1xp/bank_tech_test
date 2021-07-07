class Printer
  def statement 
    "Hello"
  end
end


=begin 
def statement
    p "Date      || Credit || Debit || Balance"
     @transactions.each do |transaction|
      p "#{transaction['date']}||    #{transaction['credit']}||    #{transaction['debit']}|| #{transaction['balance']}"
     end
  end
=end
