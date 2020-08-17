Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:index, :new, :create], shallow: true do
    resources :likes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
