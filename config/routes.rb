Rails.application.routes.draw do
    resources :users do
        resources :medicines
    end
    root "medicines#index"    
end
