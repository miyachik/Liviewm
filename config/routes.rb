# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles, only: %i[index show]
  resources :tags, only: %i[index show]
  root to: 'articles#index'
  namespace 'api' do
    resources :articles, only: %i[index]
    resources :tags, only: %i[index show]
  end
end
