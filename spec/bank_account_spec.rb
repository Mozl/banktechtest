require './lib/bank_account'
describe BankAccount do
  date = Time.new.strftime('%d-%m-%Y')
  let (:fakeTransactionClass) { double('fakeTransactionClass') }

  before do
    allow(fakeTransactionClass).to receive(:new).and_return(date, nil, 5.95, 5.95)
  end
  subject { described_class.new(0, fakeTransactionClass)}

  it 'initializes with 0 balance' do
    expect(subject.balance).to eq(0)
  end

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
