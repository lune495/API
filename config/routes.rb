Rails.application.routes.draw do
  resources :neighbours
  get 'api/create'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/api/listneighbours', to: 'api#list_neighbour'
  post '/api/neighbour', to: 'api#create_neighbour'
  get '/api/listfav', to: 'api#list_fav'
  get '/api/details/:id', to: 'api#detail_neighbour'
  put '/api/updateneighbour/:id', to: 'api#update_neighbour'
end
