class CreateCoursesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_users, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :user, index: true
    end
  end
end
