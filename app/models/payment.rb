class Payment < ActiveRecord::Base
	has_many :sales
	belongs_to :payment_status
	belongs_to :payment_types
end
