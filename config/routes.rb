Rails.application.routes.draw do
  get 'offers/show'

  get 'offers/new'

  get 'offers/create'

  get 'offers/edit'

  get 'offers/update'

  get 'offers/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
