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
    it 'adds money to account' do
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end

  describe '#withdraw' do
    it 'withdraws money from account' do
      account.withdraw(100)
      expect(account.balance).to eq(-100)
    end
  end
end
