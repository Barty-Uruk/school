class RemoveUsersForAlert < ActiveRecord::Migration[5.2]
  def change
    remove_reference :alerts, :users
  end
end
