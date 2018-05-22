require './lib/bank_account'

describe BankAccount do
  it "debits the account" do
    bank_account.debit(5)
    expect(bank_account.balance).to eq(5)
  end
end