Rails.application.routes.draw do
  resources :questions do
    resources :responses
  end
end
