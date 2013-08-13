class PaymentStatus < ActiveRecord::Base
	has_many :sales
end
