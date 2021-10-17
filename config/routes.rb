Rails.application.routes.draw do
  # get 'companies/index'
  # get 'companies/show'
  root to: 'home#index'
  # get 'types/index'
  # get 'types/show'
  resources :companies, only: [:index, :show]
  # resources :services, only: [:index, :show]
  resources :clouds, only: [:index, :show]
  resources :types, only: [:index, :show]
  resources :services, only: %i[index show] do
    collection do
      get "search"
    end
  end

  # get 'clouds/index'
  # get 'clouds/show'
  # get 'services/index'
  # get 'services/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
