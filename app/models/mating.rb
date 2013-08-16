class Mating < ActiveRecord::Base
  belongs_to :pregnancy
  belongs_to :sire, class_name: "Dog", foreign_key: "sire_id"
end
