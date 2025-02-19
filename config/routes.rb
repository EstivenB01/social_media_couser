Rails.application.routes.draw do
  resources :comments
  get "up" => "rails/health#show", as: :rails_health_check

   root "posts#index"

   resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy ]
   resources :comment, only: [:index, :new, :create, :show, :destroy ]
   resources :users, only: [:index]
end