require_relative 'transaction'

class Statement
  HEADER = 'date || debit || credit || balance'

  attr_reader :account

  def initialize(transactions)
    @transactions = transactions
  end

  def print_all
    puts HEADER
    @transactions.each do |transaction|
      puts "#{transaction.date}  || #{transaction.debit} || #{transaction.credit} || #{transaction.balance}"
    end
  end
end
