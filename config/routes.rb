Rails.application.routes.draw do


  resources :startup_profiles

  resources :mentor_profile_academics

  resources :mentor_profile_businesses

  resources :mentor_profiles

  resources :organizations

  resources :professional_profiles

  resources :general_profiles

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}


  get 'static_pages/home'
  get 'static_pages/private'


  root 'static_pages#home'

end
