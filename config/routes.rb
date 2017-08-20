Rails.application.routes.draw do
  resources :posts
  resources :home
  root 'posts#index'
end
