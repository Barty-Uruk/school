class CreateAsses < ActiveRecord::Migration[5.2]
  def change
    create_table :assess, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :course, index: true
    end
  end
end
