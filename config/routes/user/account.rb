# frozen_string_literal: true

Rails.application.routes.draw do
  get '/settings/account/nickname' => 'user/account#nickname'
  get '/settings/account/username' => 'user/account#username'
  get '/settings/account/email' => 'user/account#email'
  get '/settings/account/password' => 'user/account#password'
end
