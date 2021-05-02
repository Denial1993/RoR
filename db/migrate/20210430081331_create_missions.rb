class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end

