# frozen_string_literal: true

Rails.application.routes.draw do
root to: 'pages#home'
  get 'about',           to: 'pages#about',      as: :about
  resources :contacts, only: %i[new create]
end
