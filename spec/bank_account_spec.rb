require './lib/bank_account'
describe BankAccount do
  date = Time.new.strftime('%d-%m-%Y')
  it 'credits the account with 5' do
    subject.credit(5.95)
    expect(subject.balance).to eq(5.95)
  end

  it 'debits the account with 10' do
    subject.credit(100)
    subject.debit(10)
    expect(subject.balance).to eq(90)
  end

  it 'checks transaction array working' do
    subject.credit(500)
    subject.debit(100)
    expect(subject.transactions).to have_attributes(length: 2)
  end
end
