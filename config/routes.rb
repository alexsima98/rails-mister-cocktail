Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/cocktails', to: 'cocktails#index'
  get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
  get '/cocktails/new', to: 'cocktails#new'
  post '/cocktails', to: 'cocktails#create'

  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create, :show]
  end

  get "/cocktails/cocktails_id/doses/new", to: 'doses#new'
  post "/cocktails", to: 'doses#create'
  delete "/doses/:id", to: 'doses#destroy'
end
