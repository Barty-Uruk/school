class AddSurnameForUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :surname, :string, null: false, default: ""
  end
end
