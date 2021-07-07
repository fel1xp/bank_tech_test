
require './lib/printer'

describe Printer do 
  subject(:printer) { described_class.new }
  it 'prints Hello' do
    expect(printer.statement).to eq('Hello')
  end
end
