
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments, only: [:create, :update, :delete]
      resources :sightings, only: [:index, :create, :update, :delete]
      resources :users, only: [:index, :create, :update]

      post '/login', to: 'users#login'
    end
  end


end
