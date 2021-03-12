# frozen_string_literal: true

class AddNullConstraintToTeamManufacturer < ActiveRecord::Migration[6.0]
  def change
    change_column_null :teams, :manufacturer, false
  end
end
