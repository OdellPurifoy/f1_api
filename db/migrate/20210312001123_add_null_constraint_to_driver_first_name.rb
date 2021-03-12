# frozen_string_literal: true

class AddNullConstraintToDriverFirstName < ActiveRecord::Migration[6.0]
  def change
    change_column_null :drivers, :first_name, false
  end
end
