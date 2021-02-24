class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :title_sponsor
      t.string :manufacturer

      t.timestamps
    end
  end
end
