Rails.application.routes.draw do

  root 'images#index'
  
  namespace :api, { format: 'json' } do
    namespace :v1, { format: 'json' } do 
      post 'images/search'
      post 'images/en_search'
      get 'images/index_landing'
      get 'images/index_exit'
      post 'images/detail'
      post 'images/en_detail'
      post 'images/key'
      post 'movies/key'
      post 'images/navigation'
      
      resources :images, :only => [:index]
      resources :movies
    end
  end
  resources :images
  resources :movies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
