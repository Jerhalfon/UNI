Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :programs, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :index, :edit, :update, :destroy]
  end

  delete "/programs/:program_id/reviews/:id", to: "reviews#destroy", as: :review_destroy
  # resources :universities do
  #   resources :programs, only: [:new, :create, :edit, :update]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
