Rails.application.routes.draw do
    root "medications#index"
    get "medications" => "medications#index"
    get "medications/:id" => "medications#show", as: "medication"
end
