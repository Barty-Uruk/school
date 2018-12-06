class AddReferenceForCourses < ActiveRecord::Migration[5.2]
  def change
    add_references :groups, :course, foreign_key: true
  end
end
