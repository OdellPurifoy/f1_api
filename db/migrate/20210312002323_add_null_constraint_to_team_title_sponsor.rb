# frozen_string_literal: true

class AddNullConstraintToTeamTitleSponsor < ActiveRecord::Migration[6.0]
  def change
    change_column_null :teams, :title_sponsor, false
  end
end
