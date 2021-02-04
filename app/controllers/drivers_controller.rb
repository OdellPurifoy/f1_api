# frozen_string_literal: true

class DriversController < ApplicationController
  def index
    render json: Driver.all
  end

  def create
    driver = Driver.new(driver_params)

    if driver.save
      render json: driver, status: :created
    else
      render json: driver.errors, status: :unprocessable_entity
    end
  end

  private

  def driver_params
    params.require(:driver).permit(:first_name, :last_name, :team, :wins, :seasons, :titles)
  end
end
