class Expense < ActiveRecord::Base
  belongs_to :user
    validates :particular, :presence => true
	validates :amount, :presence =>true
	validates :particular, :uniqueness => true
	validates :amount, :numericality => { :greater_than => 0, :less_than_or_equal_to => 1000 }
end
