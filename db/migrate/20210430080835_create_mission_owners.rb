class CreateMissionOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :mission_owners do |t|

      t.timestamps
    end
  end
end
