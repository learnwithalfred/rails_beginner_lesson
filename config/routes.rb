Rails.application.routes.draw do
  get '/languages', to: 'languages#index', as: 'languages'
  get '/languages/new', to: 'languages#new', as: 'new_language'
  post '/languages', to: 'languages#create', as: 'create_language'
  get '/languages/:id', to: 'languages#show', as: 'language'
  get '/about', to: 'homes#about', as: 'about'

  root "homes#index"
end
