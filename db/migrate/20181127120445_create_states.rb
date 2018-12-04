class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.references :lesson, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
