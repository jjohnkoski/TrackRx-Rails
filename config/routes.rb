Rails.application.routes.draw do
    get 'signup' => 'users#new'
    resources :users
    root "medicines#index"
    resources :medicines
end
