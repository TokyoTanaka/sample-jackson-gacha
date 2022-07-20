# frozen_string_literal: true

Rails.application.routes.draw do
  get '/settings/reactions/like' => redirect('/settings/reactions/like/photo')
  get '/settings/reactions' => 'user/reactions#index'
  get '/settings/reactions/like/photo' => 'user/reactions#photo'
end
