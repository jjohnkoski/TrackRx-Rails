Rails.application.routes.draw do
    root "medicines#index"
    resources :medicines
end
