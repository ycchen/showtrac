class Sale < ActiveRecord::Base
  belongs_to :dog
  belongs_to :customer
end