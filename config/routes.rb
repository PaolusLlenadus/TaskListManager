TweeterV2::Application.routes.draw do
  devise_for :users
  resources :tweets
  root :to => "pages#index"
end
