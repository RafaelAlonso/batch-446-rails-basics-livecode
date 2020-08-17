Rails.application.routes.draw do
  get '/list', to: 'flats#list'
  get '/single/:id', to: 'flats#single', as: :single
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
