# frozen_string_literal: true

module Api
  module V1
    class DriversController < ApplicationController
      def index
        drivers = Driver.all
        render json: DriversRepresenter.new(drivers).as_jsonslack
      end

      def create
        driver = Driver.new(driver_params)

        if driver.save
          render json: driver, status: :created
        else
          render json: driver.errors, status: :unprocessable_entity
        end
      end

      def destroy
        driver = Driver.find(params[:id]).destroy!
        head :no_content
      end

      private

      def driver_params
        params.require(:driver).permit(:first_name, :last_name, :team, :wins, :seasons, :titles)
      end
    end
  end
end
