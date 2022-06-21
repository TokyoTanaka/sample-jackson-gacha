# frozen_string_literal: true

Rails.application.routes.draw do
  get '/settings' => redirect('/settings/account')
  get '/settings/account' => 'user/settings#index'
  get '/settings/profile' => 'user/settings#profile'
end
