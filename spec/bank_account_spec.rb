require './lib/bank_account'

describe BankAccount do
  it "credits the account with 5" do
    subject.credit(5)
    expect(subject.balance).to eq(5)
  end
end