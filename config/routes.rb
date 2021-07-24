Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'homes#index'
  # homes/indexに遷移

  resources :homes, only: [:new, :cerate, :show]

  resources :books

  resources :users

  get 'home/about' => 'homes#show', as: 'about'
end
