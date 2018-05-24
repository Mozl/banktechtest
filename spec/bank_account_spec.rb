require './lib/bank_account'
describe BankAccount do
  date = Time.new.strftime('%d-%m-%Y')
  let (:fakeTransactionClass) { double('fakeTransactionClass', date: date, debit: nil, credit: 5.95, balance: 0) }

  it 'initializes with 0 balance' do
    expect(fakeTransactionClass.balance).to eq(0)
  end

  it 'credits the account with 5.95' do
    expect{subject.credit(5.95)}.to change{subject.balance}.from(0).to(5.95)
  end

  it 'debits the account with 10' do
    expect{subject.debit(5.95)}.to change{subject.balance}.from(0).to(-5.95)
  end

  it 'checks transaction array working' do
    subject.credit(500)
    subject.debit(100)
    expect(subject.transactions).to have_attributes(length: 2)
  end
end
