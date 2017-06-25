Rails.application.routes.draw do
  root 'home#index'

  resources :authors do
      member do
        get :book
      end
  end

  resources :books do
    resources :orders
  end

  get "/login" => "sessions#new", as: "login"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
end
