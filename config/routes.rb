Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"

  resources :cocktail, only: [:index, :show, :new, :create] do
    resources :dose, only: [:create]
  end
  resources :dose, only: [:destroy]
end
