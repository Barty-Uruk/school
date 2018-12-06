class ChangeForUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :confirmation_token
  end
end
