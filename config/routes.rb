Rails.application.routes.draw do
  devise_for :users
  root :to => 'projects#index'

  resources :projects do
    resources :description, :except => [:show, :index]
    resources :technologies_used, :except => [:show, :index]
  end
end
