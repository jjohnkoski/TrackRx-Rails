Rails.application.routes.draw do
    get 'signup' => 'users#new'
    resources :users
    resource :session
    root "medicines#index"
    resources :medicines
end
