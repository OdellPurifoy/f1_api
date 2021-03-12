# frozen_string_literal: true

class AddNullConstraintToDriverWins < ActiveRecord::Migration[6.0]
  def change
    change_column_null :drivers, :wins, false
  end
end
