# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :drivers, only: %i[index create destroy]
    end
  end
end
