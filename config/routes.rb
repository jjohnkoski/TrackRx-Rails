Rails.application.routes.draw do

  resources :types
# Need to make a welcome splash screen for root
  resources :users
  resource :session
  resources :medicines do
    resources :takes
  end

  get 'signup' => 'users#new'
  root "medicines#index"
end
