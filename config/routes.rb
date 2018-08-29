Rails.application.routes.draw do
  resources :ingredients
  devise_for :caterings
  devise_for :users
  
  resources :caterings, only: [:index, :show] do
    resources :meals, only: [:index, :show, :edit, :new, :create]
    resources :daily_meals, only: [:index, :new, :create]
  end
  root to: "welcome#index"
end
