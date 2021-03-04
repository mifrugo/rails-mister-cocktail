Rails.application.routes.draw do
  root to: 'cocktails#index'

  get '/cocktails', to: 'cocktails#index'

  # get '/cocktails/new', to: 'cocktails#new'
  post '/cocktails', to: 'cocktails#create'

  get '/cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  patch '/cocktails/:id', to: 'cocktails#update'

  get '/cocktails/:id/doses/new', to: 'doses#new', as: 'new_dose'
  post '/cocktails/:id/doses', to: 'doses#create', as: 'cocktail_doses'
  delete '/doses/:id', to: 'doses#destroy', as: 'dose'

end
