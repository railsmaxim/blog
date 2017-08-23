Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    resources :commments
  end

  resources :commments do
    resources :commments
  end

  resources :pictures, only: [:create, :destroy]
end
