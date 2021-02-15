Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes, only: [:index, :about]
  get '/home/about' => 'homes#about'
  # ？？？？？？？？？？？？？？？？？？？？？？？？？？
  resources :books, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :edit, :new, :update, :destroy]
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html