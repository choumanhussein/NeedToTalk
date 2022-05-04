Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
root  "blogs#index"
devise_for :users
resources :users, only: [:show]
resources :conversations do
resources :messages
end
resources :favorites
  resources :blogs do
    resources :comments

    collection do
      post :confirm
    end
  end
  #resources :sessions, only: [:new, :create, :destroy]
  resources :users do
    member do
      get :likes
    end

  end
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
end
