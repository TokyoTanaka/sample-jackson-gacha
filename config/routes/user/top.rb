# frozen_string_literal: true

Rails.application.routes.draw do
  get '/' => 'user/top#index', as: :user_top
end
