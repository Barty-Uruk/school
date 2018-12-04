class DropAssesses < ActiveRecord::Migration[5.2]
  def change
    drop_table :assesses
  end
end
