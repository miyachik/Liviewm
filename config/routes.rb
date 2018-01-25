# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles, only: %i[index]
  root to: 'articles#index'
  namespace 'api' do
    resources :articles, only: %i[index]
  end
end
