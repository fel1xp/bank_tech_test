
require './lib/printer'

describe Printer do 
  subject(:printer) { described_class.new }
  it 'prints Hello' do
    expect(printer.statement).to eq('Hello')
  end
end


=begin 
  describe '#statement' do
    it 'prints a formatted account statement' do
      expect(account.statement).to start_with('Date      || Credit || Debit || Balance')
    end

    it 'prints all details from the #deposit hash' do
      account.deposit('01/01/2021', 100)
      expect(account.statement).to eq('Date      || Credit || Debit || Balance
      01/01/2021||100||||100')
    end

    it 'prints all details from the #withdraw hash' do
      account.withdraw('01/01/2021', 100)
      expect(account.statement).to eq('Date      || Credit || Debit || Balance
      01/01/2021||||100||-100')
    end

    it 'prints 2 transactions' do 
      account.deposit('01/01/2021',100)
      account.deposit('02/01/2021',100)
      expect(account.statement).to eq('Date      || Credit || Debit || Balance
      01/01/2021||100||||100
      02/01/2021||100||||100')
    end
  end
=end
