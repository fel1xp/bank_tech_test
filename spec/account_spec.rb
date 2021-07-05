# frozen_string_literal: true

require './lib/account'

describe Account do
  subject(:account) { described_class.new }

  describe '#initialize' do
    it 'returns a balance of 0 for a new account' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'adds money to account with date' do
      expect(account.deposit("01/01/2021", 100)).to eq("01/01/2021, 100")
    end
  end

  describe '#withdraw' do
    it 'withdraws money from account' do
      expect(account.withdraw("01/01/2021",100)).to eq("01/01/2021, -100")
    end
  end

  describe '#statement' do 
    it 'prints a formatted account statement' do
      expect(account.statement).to match("Date      || Credit || Debit || Balance")
    end
  end

end
