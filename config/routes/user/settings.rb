# frozen_string_literal: true

Rails.application.routes.draw do
  get '/settings' => redirect('/settings/account')
  get '/settings/account' => 'user/settings#index'
  get '/settings/profile' => 'user/settings#profile'
  get '/settings/social_profile' => 'user/settings#social_profile'
  get '/settings/notifications' => 'user/settings#notifications'
  get '/settings/reactions' => 'user/settings#reactions'
  get '/settings/credit_card' => 'user/settings#credit_card'
  get '/settings/premium' => 'user/settings#premium'
  get '/settings/withdrawal' => 'user/settings#withdrawal'
end
