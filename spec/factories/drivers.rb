# frozen_string_literal: true

FactoryBot.define do
  factory :driver do
    first_name { 'Kimi' }
    last_name { 'Raikkonnen' }
    team { 'Alfa Romeo' }
    # seasons 15
    # titles 1
    # wins 10
  end
end
