Rails.application.routes.draw do
  # get 'types/index'
  # get 'types/show'
  resources :services, only: [:index, :show]
  resources :clouds, only: [:index, :show]
  resources :types, only: [:index, :show]
  # get 'clouds/index'
  # get 'clouds/show'
  # get 'services/index'
  # get 'services/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
