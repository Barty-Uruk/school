class DropAssess < ActiveRecord::Migration[5.2]
  def change
    drop_table :assess
  end
end
