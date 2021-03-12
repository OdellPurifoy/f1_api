# frozen_string_literal: true

class AddNullConstraintToDriverLastName < ActiveRecord::Migration[6.0]
  def change
    change_column_null :drivers, :last_name, false
  end
end
