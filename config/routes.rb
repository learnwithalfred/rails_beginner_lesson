Rails.application.routes.draw do
  get '/about', to: 'homes#about', as: 'about'

  root "homes#index"
end
