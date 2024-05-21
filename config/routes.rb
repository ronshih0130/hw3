Rails.application.routes.draw do
  get 'entries/new'
  get 'entries/create'
  get 'places/index'
  get 'places/show'
  get 'places/new'
  get 'places/create'
  root 'places#index'
  
  resources :places, only: [:index, :show, :new, :create] do
    resources :entries, only: [:new, :create]
  end
end