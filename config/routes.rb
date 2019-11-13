Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :programs, only: [:index, :show] do
    resources :favorites, only: [:create]
    resources :reviews, only: [:new, :create, :index, :edit, :update, :destroy]
  end

  resources :favorites, only: [:index, :destroy]

  get 'description', to: 'mbtis#description'

  get 'personality', to: 'mbtis#personality'

  resources :mbtis, only: :new do
    resources :categories, only: [:index]
  end

  namespace :admin do
    resources :universities, only: [:index, :new, :create] do
      resources :programs, only: [:new, :create]
    end
  end


  # resources :universities do
  #   resources :programs, only: [:new, :create, :edit, :update]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
