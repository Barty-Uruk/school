class AddExperienceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :experience, :integer
  end
end
