# frozen_string_literal: true

class AddNullConstraintToDriverTitles < ActiveRecord::Migration[6.0]
  def change
    change_column_null :drivers, :titles, false
  end
end
