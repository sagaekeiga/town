Rails.application.routes.draw do
  root 'images#index'
  
  namespace :api, { format: 'json' } do
    namespace :v1 do 
      resources :images
    end
  end
  
  resources :images

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
