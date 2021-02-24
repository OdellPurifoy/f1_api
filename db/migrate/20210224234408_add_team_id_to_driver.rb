# frozen_string_literal: true

class AddTeamIdToDriver < ActiveRecord::Migration[6.0]
  def change
    add_reference :drivers, :team
  end
end
