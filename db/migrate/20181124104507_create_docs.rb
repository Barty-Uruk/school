class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.string :file
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
