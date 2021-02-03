class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :team
      t.integer :wins
      t.integer :seasons
      t.integer :titles

      t.timestamps
    end
  end
end
