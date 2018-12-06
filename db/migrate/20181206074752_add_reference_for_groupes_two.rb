class AddReferenceForGroupesTwo < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :course, foreign_key: true
  end
end
