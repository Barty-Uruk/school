class RemoveReferenceForUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :groups
  end
end
