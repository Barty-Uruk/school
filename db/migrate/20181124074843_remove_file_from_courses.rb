class RemoveFileFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :file, :string
  end
end
