Rails.application.routes.draw do
  get 'top' => 'books#top'
  root to: 'books#top'
  
  get '/index.html' => 'books#index'
  
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  
  post 'todolists' => 'todolists#create'
  
end
