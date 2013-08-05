class ShowEntry < ActiveRecord::Base
  belongs_to :dog
  belongs_to :show
  has_many :dog_expenses
end
