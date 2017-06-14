Rails.application.routes.draw do

  root 'images#index'
  
  namespace :api, { format: 'json' } do
    namespace :v1, { format: 'json' } do 

      resources :images, :only => [:index] do
        member do
          post 'search'
        end
      end
      resources :movies
    end
  end
  
  resources :images
  resources :movies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
