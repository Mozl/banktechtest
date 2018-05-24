require './lib/transaction'
require './lib/bank_account'

describe Transaction do
  date = Time.new.strftime('%d-%m-%Y')
  subject(:credit_transaction) { described_class.new(date, nil, 1000.99, 1000.99)}
  subject(:debit_transaction) { described_class.new(date, -1000.99, nil, -1000.99)}

  it 'tests a credit transaction has correct credit amount' do
    expect(credit_transaction.credit).to eq(1000.99)
  end

  it 'tests a debit transaction has correct debit amount' do
    expect(debit_transaction.debit).to eq(-1000.99)
  end

  it 'tests a credit transaction has correct balance amount' do
    expect(credit_transaction.balance).to eq(1000.99)
  end

  it 'tests correct date' do
    expect(credit_transaction.date).to eq(date)
  end
end