Rails.application.routes.draw do

# Need to make a welcome splash screen for root
  resources :takes
  resources :users
  resource :session
  resources :medicines
    get 'signup' => 'users#new'
    root "medicines#index"
end
