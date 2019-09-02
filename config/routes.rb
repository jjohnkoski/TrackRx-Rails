Rails.application.routes.draw do
    get "medications" => "medications#index"
    get "medications/:name" => "medications#show"
end
