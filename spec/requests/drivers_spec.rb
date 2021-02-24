# frozen_string_literal: true

require 'rails_helper'

describe 'Drivers Api', type: :request do
  describe 'GET /drivers' do
    it 'should return all drivers' do
      FactoryBot.create(:driver)
      get 'http://localhost:3000/api/v1/drivers'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(7)
    end
  end

  describe 'POST /drivers' do
    it 'should create a new driver' do
      expect do
        post 'http://localhost:3000/api/v1/drivers', params: { driver: { first_name: 'Daniel', last_name: 'Ricciardo', team: 'McLaren', wins: 5, seasons: 7, titles: 0 } }
      end.to change { Driver.count }.from(7).to(6)

      expect(response).to have_http_status(:created)
    end
  end

  describe 'DESTROY /driver/:id' do
    driver = FactoryBot.create(:driver)

    it 'destroys a driver' do
      expect do
        delete "http://localhost:3000/api/v1/drivers/#{driver.id}"
      end.to change { Driver.count }.from(5).to(4)

      expect(response).to have_http_status(:no_content)
    end
  end
end
