# frozen_string_literal: true

class DriversRepresenter
  def initialize(drivers)
    @drivers = drivers
  end

  def as_json
    @drivers.map do |driver|
      {
        id: driver.id,
        first_name: driver.first_name,
        last_name: driver.last_name,
        full_name: full_driver_name(driver),
        wins: driver.wins,
        seasons: driver.seasons,
        titles: driver.titles,
        team: driver.team.team_name
      }
    end
  end

  private

  attr_reader :drivers

  def full_driver_name(driver)
    "#{driver.first_name} #{driver.last_name}"
  end
end
