# frozen_string_literal: true

class Driver < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
end
