require './lib/bank_account'

describe BankAccount do
  it "credits the account with 5" do
    subject.credit(5)
    expect(subject.balance).to eq(5)
  end

  it "debits the account with 10" do
    subject.credit(100)
    subject.debit(10)
    expect(subject.balance).to eq(90)
  end
end