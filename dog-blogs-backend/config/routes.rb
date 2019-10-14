Rails.application.routes.draw do
  resources :comments, only: [:index, :create]
  resources :blogs, only: [:create, :update, :show]
  resources :contents, only: []
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
