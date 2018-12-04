class AddStatusForStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :statuses, :status, :integer
  end
end
