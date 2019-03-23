class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :club
      t.string :city
      t.string :stadium
      t.string :capacity
      t.string :founded

      t.timestamps
    end
  end
end
