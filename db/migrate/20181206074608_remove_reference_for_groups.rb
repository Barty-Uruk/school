class RemoveReferenceForGroups < ActiveRecord::Migration[5.2]
  def change
    remove_reference :groups, :course, foreign_key: true
  end
end
