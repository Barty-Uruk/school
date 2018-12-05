class AddRequiredExperienceToLesson < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :required_experience, :integer
  end
end
