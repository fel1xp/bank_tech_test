# Bank Tech Test

### Requirements

* Interact with code with IRB
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).


#### Input:
account.deposit(03/07/2021, 1000)
account.withdraw(05/07/2021, 200)
account.statement

#### Output:
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

### Get Started
1. Clone this repo
2. Run bundle install
3. Start up the IRB and begin interacting by creating 'account = Account.new'
4. Run rspec with 'rspec'

### Approach
I used a TDD approach, working on improving my test triangulation skills - starting small and building upwards. 

### Problems
I got stuck at the end of the programme with my tests. I was able to successfully generate a bank statement, but the tests were using the IRB output which contains a hash of values, instead of reading the 'p statement'.