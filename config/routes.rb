Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :programs, only: [:index, :show] do
    resources :favorites, only: [:create]
    resources :reviews, only: [:new, :create, :index]
  end
  resources :favorites, only: [:index]


  # resources :universities do
  #   resources :programs, only: [:new, :create, :edit, :update]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
