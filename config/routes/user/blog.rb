# frozen_string_literal: true

Rails.application.routes.draw do
  get '/blog' => 'user/blog#index', as: :blog
end
