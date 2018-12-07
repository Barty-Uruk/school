class ChangeRatingForUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :rating, :integer, default: 0
  end
end
