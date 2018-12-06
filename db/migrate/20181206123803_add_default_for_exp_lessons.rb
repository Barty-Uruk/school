class AddDefaultForExpLessons < ActiveRecord::Migration[5.2]
  def change
    change_column :lessons, :experience, :integer, default: 0
    change_column :lessons, :required_experience, :integer, default: 0

  end
end
