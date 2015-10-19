Rails.application.routes.draw do
  root :to => 'questions#index'
  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :users
  resources :sessions

  resources :questions do
    resources :responses
  end
end
