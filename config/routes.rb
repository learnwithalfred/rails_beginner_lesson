Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'homes#about', as: 'about_me'
  resources :sections

  resources :categories
  resources :languages do
    resources :courses do 
      resources :lectures
    end
  end

  # get '/languages', to: 'languages#index', as: 'languages'
  # get '/languages/new', to: 'languages#new', as: 'new_language'
  # post '/languages', to: 'languages#create', as: 'create_language'
  # get '/languages/:id', to: 'languages#show', as: 'language'
  # get '/about', to: 'homes#about', as: 'about'
  # get '/languages/:id/edit', to: 'languages#edit', as: 'edit_language'
  # patch '/languages/:id', to: 'languages#update', as: 'update_language'
  # delete '/languages/:id', to: 'languages#destroy', as: 'destroy_language'
  root "homes#index"
end
