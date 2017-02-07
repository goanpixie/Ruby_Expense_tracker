
require 'rails_helper'
RSpec.describe User, type: :model do
	it "should require name" do
	  	user1 = User.new(name: "", budget: 54)
	  	user1.save
	  	expect(user1.valid?).to be false;
	end
	it "Should require budget" do
	  	user1 = User.new(name: "Joe", budget:"")
	  	user1.save
		expect(user1.valid?).to be false;
	end

	it "Name Should be unique" do
	User.create(
    name: "Jane",
    budget: 78,
   )
   user = User.new(
    name: "Jane",
    budget: 87)
   expect(user).to be_invalid
  end

  it {
  User.budget = 99
  User.budget = 1001
  expect(user).to be_invalid
  User.errors[:budget].should include("must be more than or equal to $100 and less than $1000")
}



   
end