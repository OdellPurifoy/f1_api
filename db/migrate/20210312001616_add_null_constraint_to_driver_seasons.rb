# frozen_string_literal: true

class AddNullConstraintToDriverSeasons < ActiveRecord::Migration[6.0]
  def change
    change_column_null :drivers, :seasons, false
  end
end
