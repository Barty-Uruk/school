class ChangeReferenses4 < ActiveRecord::Migration[5.2]
  def change
    remove_reference :groups, :course
  end
end
