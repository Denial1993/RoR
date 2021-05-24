class RemoveStartAndAddUserIdForMissions < ActiveRecord::Migration[5.2]
  def change
    add_column(:missions, :user_id, :integer)
    remove_column(:missions , :start) 
  end
end
