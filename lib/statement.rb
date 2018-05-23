require_relative 'transaction'

class Statement

  attr_reader :account

  def initialize(account)
    @account = account
  end

  def print_header
    'date || debit || credit || balance'
  end

  def print_all
    puts print_header
    @account.transactions.each do |transaction|
      puts "#{transaction.date} || #{transaction.debit} || #{transaction.credit} || #{transaction.balance}"
    end
  end
end
