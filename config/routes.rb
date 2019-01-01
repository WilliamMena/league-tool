Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :bar, only: [:index]
  namespace :api do
    resources :bar
  end
end
