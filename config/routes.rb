Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'
  resources :games, only: [:index, :show] do
    resources :offers, only: [:new, :create, :show]
  end

  resources :offers, only: :destroy
  resources :profile, only: :show
  resources :games, only: [:new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
