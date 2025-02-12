# frozen_string_literal: true

Rails.application.routes.draw do
  root "top#index"

  resources :users, only: [:show] do
    resources :companies, only: [:new, :create, :edit, :update] 
  end

  resources :selections, only: [:create]

end
