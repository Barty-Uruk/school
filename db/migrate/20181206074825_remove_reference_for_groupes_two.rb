class RemoveReferenceForGroupesTwo < ActiveRecord::Migration[5.2]
  def change
    remove_reference :groups, :courses
  end
end
