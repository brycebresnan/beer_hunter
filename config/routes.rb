Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post '/api-keys', to: 'api_keys#create'
  delete '/api-keys', to: 'api_keys#destroy'
  get '/api-keys', to: 'api_keys#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/locations/barcrawl', to: 'locations#crawl'
  
  resources :locations

  # Defines the root path route ("/")
  # root "articles#index"
end
