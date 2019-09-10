Rails.application.routes.draw do
    root "medicines#index"
    get "medicines" => "medicines#index"
    get "medicines/:id" => "medicines#show", as: "medicine"
    get "medicines/:id/edit" => "medicines#edit", as: "edit_medicine"
    patch "medicines/:id" => "medicines#update"
end
