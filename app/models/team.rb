# frozen_string_literal: true

class Team < ApplicationRecord
  validates :team_name, :title_sponsor, :manufacturer, presence: true
  has_many :drivers, dependent: :destroy
end
