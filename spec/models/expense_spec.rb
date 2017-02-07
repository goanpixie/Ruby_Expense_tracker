require 'rails_helper'
RSpec.describe Expense, type: :model do
	it "should require particular" do
	  	p1 = Expense.new(particular: "", amount: 54)
	  	p1.save
	  	expect(p1.valid?).to be false;
	end
	it "Should require amount" do
	  	p1 = Expense.new(particular: "Joe", amount:"")
	  	p1.save
		expect(p1.valid?).to be false;
	end

	it "Particular Should be unique" do
	Expense.create(
    particular: "Jane",
    amount: 78,
   )
   p = Expense.new(
    particular: "Jane",
    amount: 87)
   expect(expense).to be_invalid
  end

  it "Amount should be within limits" do {
  Expense.amount = 99
  Expense.amount = 1001
  expect(expense).to be_invalid
  Expense.errors[:amount].should include("must be more than or equal to $100 and less than $1000")
}
end
