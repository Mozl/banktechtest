

class BankAccount

  attr_accessor :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def credit(amount)
    @transactions << Transaction.new(Time.new.strftime("%d-%m-%Y"), nil, amount, @balance)
    @balance += amount
  end

  def debit(amount)
    @transactions << Transaction.new(Time.new.strftime("%d-%m-%Y"), amount, nil, @balance)
    @balance -= amount
  end

end