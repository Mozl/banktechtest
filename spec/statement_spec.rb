require "./lib/statement"
require "./lib/bank_account"
require "./lib/transaction"

describe Statement do
  it 'prints a transaction' do
    expect(statement.print_transaction).to eq(date, debit, credit, balance)
  end
end