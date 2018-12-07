class UsersAlertww < ActiveRecord::Migration[5.2]
  def change
    add_reference :alerts, :user, foreign_key: true
  end
end
