class CreateUserDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_docs do |t|
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.string :file

      t.timestamps
    end
  end
end
