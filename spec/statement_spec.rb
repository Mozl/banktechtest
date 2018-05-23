require './lib/statement'
require './lib/bank_account'
require './lib/transaction'
describe Statement do
  date = Time.new.strftime('%d-%m-%Y')
  it 'prints a header' do
    account = BankAccount.new
    statement = Statement.new(account)
    expect(statement.print_header).to eq('date || debit || credit || balance')
  end

  it 'prints a transaction' do
    account = BankAccount.new
    statement = Statement.new(account)
    account.credit(200)
    statement.print_all
    expect { print('23-05-2018 || || 200 || 200') }.to output.to_stdout
  end
end
