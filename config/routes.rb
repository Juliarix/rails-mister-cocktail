Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
  resources :cocktails, only: [:show, :index, :new, :create ] do
    resources :doses, only: [ :create, :new ]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:show]
end
