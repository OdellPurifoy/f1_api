# frozen_string_literal: true

class AddNullConstraintToTeamName < ActiveRecord::Migration[6.0]
  def change
    change_column_null :teams, :team_name, false
  end
end
