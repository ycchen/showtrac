class Dog < ActiveRecord::Base
	SEX_TYPE = %w[Female Male]
	has_many :show_entries
	has_many :dog_expenses
	has_many :sales
	has_many :photos
	has_many :pictures, :as => :attachable, :dependent => :destroy
	accepts_nested_attributes_for :pictures, :allow_destroy => true
end
