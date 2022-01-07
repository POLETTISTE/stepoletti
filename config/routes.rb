# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  get 'portfolio', to: 'pages#portfolio', as: :portfolio
  get 'legal', to: 'pages#legal'
  get 'about', to: 'pages#about'

  resources :contacts, only: %i[new create]
end
