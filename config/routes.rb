Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "restaurants/:id/edit", to: "restaurants#edit"
  patch "restaurants/:id", to: "restaurants#update"

  resources :restaurants, only: [:index, :show, :create, :new] do
   resources :reviews, only: [:new, :create]
  end
end
