# frozen_string_literal: true

Rails.application.routes.draw do
  get '/privacy' => 'user/privacy#index', as: :privacy
end
