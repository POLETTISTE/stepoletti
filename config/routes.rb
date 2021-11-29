# frozen_string_literal: true

Rails.application.routes.draw do
root to: 'pages#home'
  get 'portfolio',           to: 'pages#portfolio',      as: :portfolio
  resources :contacts, only: %i[new create]
end
