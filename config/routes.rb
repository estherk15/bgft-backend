
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :sightings
      resources :users
    end
  end


end
