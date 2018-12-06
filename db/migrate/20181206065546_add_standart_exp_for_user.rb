class AddStandartExpForUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :experience, :integer, :default => 0
  end
end
