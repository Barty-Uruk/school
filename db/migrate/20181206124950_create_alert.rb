class CreateAlert < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :description
    end
  end
end
