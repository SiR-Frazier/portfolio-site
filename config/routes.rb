Rails.application.routes.draw do
  root :to => 'projects#index'

  resources :projects do
    resources :description, :except => [:show, :index]
    resources :technologies_used, :except => [:show, :index]
  end
end
