Rails.application.routes.draw do
  root 'plants#index'
  resources :plants
  resources :impacts
  get '/howto', to: 'how_to#show'
  get '/imprint', to: 'imprint#show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
