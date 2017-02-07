class User < ActiveRecord::Base
	has_many :expenses
	validates :name, :presence => true
	validates :budget, :presence =>true
	validates :name, :uniqueness => true
	validates :budget, :numericality => { :greater_than => 100, :less_than_or_equal_to => 1000 }
end
