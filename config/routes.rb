# frozen_string_literal: true

Rails.application.routes.draw do
  get 'homes/index'
  root 'homes/index'
  namespace 'api' do
    resources :articles, only: %i[index]
  end
end
