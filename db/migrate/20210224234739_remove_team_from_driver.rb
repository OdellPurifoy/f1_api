class RemoveTeamFromDriver < ActiveRecord::Migration[6.0]
  def change
    remove_column :drivers, :team, :string
  end
end
