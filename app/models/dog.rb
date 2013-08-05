class Dog < ActiveRecord::Base
	SEX_TYPE = %w[Female Male]
	has_many :show_entries
	has_many :dog_expenses
end
