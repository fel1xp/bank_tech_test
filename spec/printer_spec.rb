
require './lib/printer'

describe Printer do 
  subject(:printer) { described_class.new }
  it 'prints the header of the bank statement' do
    expect(printer.statement).to eq('date || credit || debit || balance
    14/01/2012 || || 500.00 || 2500.00
    13/01/2012 || 2000.00 || || 3000.00
    10/01/2012 || 1000.00 || || 1000.00')
  end
end



