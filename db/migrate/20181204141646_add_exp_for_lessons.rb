class AddExpForLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :experience, :integer
  end
end
