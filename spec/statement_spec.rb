require "./lib/statement"
require "./lib/bank_account"
require "./lib/transaction"

describe Statement do
  it 'prints a transaction' do
    statement = Statement.new
    expect(statement.print_transaction).to eq(date, debit, credit, balance)
  end

  it 'prints a header' do
    statement = Statement.new
    expect(statement.print_header).to eq("date || debit || credit || balance")
  end
end