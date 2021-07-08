
require './lib/printer'

describe Printer do 
  subject(:printer) { described_class.new }
  it 'prints the whole the bank statement' do
    expect(printer.statement).to match(
    'date || credit || debit || balance
    14/01/2012 || || 500.00 || 2500.00')
  end

  it 'prints the header of the statement' do
    expect(printer.header).to eq('date || credit || debit || balance')
  end

  it 'prints the body of the statement' do 
    expect(printer.body).to eq('14/01/2012 || || 500.00 || 2500.00')
  end
  

end



