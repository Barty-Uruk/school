class DropStatus < ActiveRecord::Migration[5.2]
  def change
    drop_table :statuses
  end
end
