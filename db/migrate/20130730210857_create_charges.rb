class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
