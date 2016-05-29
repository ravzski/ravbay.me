Rails.application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    resource :session, only: %i(show create destroy)
    resources :users
    resources :messages
  end
  
  get "admin/*path" => "admin#index"
  get "*path" => "application#index"
  root to: "application#index"
end
