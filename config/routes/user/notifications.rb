# frozen_string_literal: true

Rails.application.routes.draw do
  # get '/settings/reactions/like' => redirect('/settings/reactions/like/photo')
  get '/settings/notifications' => 'user/notifications#index'
  get '/settings/notifications/mail' => 'user/notifications#mail'
end
