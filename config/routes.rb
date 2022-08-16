Rails.application.routes.draw do

  devise_for :users
  resources :insta_users
  resources :insta_posts
  resources :users do
    resources :posts
  end
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
