class AddLogoForCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :logo, :string
  end
end
