class ChangeReferenses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_groups, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :group, index: true
    end
  end
end
