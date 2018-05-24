require_relative 'statement'
require_relative 'transaction'

class BankAccount
  attr_accessor :balance, :transactions
  def initialize(balance = 0.0, transaction = Transaction)
    @balance = balance
    @transactions = []
    @transaction = transaction
  end

  def credit(amount)
    @balance += amount
    @transactions << @transaction.new(Time.new.strftime('%d-%m-%Y'), nil, amount, (@balance).round(2))
  end

  def debit(amount)
    @balance -= amount
    @transactions << @transaction.new(Time.new.strftime('%d-%m-%Y'), amount, nil, (@balance).round(2))
  end
end
