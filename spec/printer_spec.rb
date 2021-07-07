
require './lib/printer'

describe Printer do 
  subject(:printer) { described_class.new }
  it 'prints the header of the bank statement' do
    expect(printer.header).to eq('date || credit || debit || balance')
  end
end



