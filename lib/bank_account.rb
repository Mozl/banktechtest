require_relative 'statement'
require_relative 'transaction'

class BankAccount
  attr_accessor :balance, :transactions
  def initialize(balance = 0.0)
    @balance = balance
    @transactions = []
  end

  def credit(amount)
    @balance += amount
    @transactions << Transaction.new(Time.new.strftime('%d-%m-%Y'), nil, amount, @balance)
  end

  def debit(amount)
    @balance -= amount
    @transactions << Transaction.new(Time.new.strftime('%d-%m-%Y'), amount, nil, @balance)
  end
end
