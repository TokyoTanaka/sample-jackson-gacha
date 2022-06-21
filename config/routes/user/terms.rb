# frozen_string_literal: true

Rails.application.routes.draw do
  get '/terms' => 'user/terms#index', as: :terms
end
