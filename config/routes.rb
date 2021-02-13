Rails.application.routes.draw do
  root 'homes#index'
  
  resources :homes, only: [:index, :about]
  get '/home/about' => 'homes#about'
  # ？？？？？？？？？？？？？？？？？？？？？？？？？？
  
  devise_for :users
  resources :books, only: [:new, :create, :show, :destroy, :edit]

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html