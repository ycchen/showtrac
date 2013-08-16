class AddProgesteroneToMating < ActiveRecord::Migration
  def change
    add_column :matings, :progesterone, :decimal, :precision => 8, :scale => 2, :default => 0.0
  end
end
