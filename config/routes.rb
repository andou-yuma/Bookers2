Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'homes#top'


  resources :homes, only: [:new, :cerate, :show]

  resources :books do
    resources :book_commnt,only: [:create,:destroy]
  end

  resources :users

  resource :favorites,only: [:create, :destroy]

  get 'home/about' => 'homes#about', as: 'about'
end
