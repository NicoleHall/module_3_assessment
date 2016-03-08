Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
  resources :bestbuys, only: [:new]
  get 'bestbuys/results', to: "bestbuys#results"

    namespace :api, defaults: { format: :json } do
    namespace :v1  do
      resources :items
    end
  end


end
