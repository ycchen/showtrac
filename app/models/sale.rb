class Sale < ActiveRecord::Base
  belongs_to :dog
  belongs_to :customer
  belongs_to :payment
end
