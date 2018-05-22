class BankAccount

  attr_accessor :balance

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def credit(amount)
    @balance += amount
  end

end