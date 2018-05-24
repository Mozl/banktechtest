require './lib/statement'
require './lib/bank_account'
require './lib/transaction'
describe Statement do

  date = Time.new.strftime('%d-%m-%Y')

  it 'prints a transaction' do
    transactions = []
    transactions << double(date: date, debit: nil, credit: 2000.99,  balance: 2000.99 )
    statement = described_class.new(transactions)
    expect { statement.print_all }.to output("date || debit || credit || balance\n#{date}  ||  || 2000.99 || 2000.99\n").to_stdout
  end
end
