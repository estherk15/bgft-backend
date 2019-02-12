
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments, only: [:create, :destroy, :update]
      resources :sightings, only: [:index, :create, :update, :destroy]
      resources :users, only: [:index, :create, :update]

      post '/login', to: 'users#login'
    end
  end


end
